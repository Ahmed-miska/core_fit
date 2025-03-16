import 'package:core_fit/core/helpers/function.dart';
import 'package:core_fit/features/market/products/data/models/product_by_id_response_model.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:core_fit/features/market/products/data/repos/products_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;
  ProductsCubit(this._productsRepo) : super(ProductsState.initial());
  List<Product> products = [];
  TextEditingController searchController = TextEditingController();

  int? categoryId;
  int? marketId;
  int page = 1;
  bool hasReachedMax = false;
  void reset() {
    if (categoryId == 0) {
      categoryId = null;
    }
    products = [];
    page = 1;
    hasReachedMax = false;
    getProducts();
  }

  Future<void> getProducts({int? marketIdd, String? name, int? categoryIdd}) async {
    if (page == 1) {
      emit(ProductsState.productsLoading());
    }
    final result = await _productsRepo.getProducts(page: page, subCategoryId: categoryIdd ?? categoryId, marketId: marketIdd ?? marketId, name: searchController.text);
    result.when(
      success: (response) {
        if (response.data!.products!.isNotEmpty) {
          products = products + response.data!.products!;
        }
        hasReachedMax = response.data!.totalPages == page;
        page++;
        emit(ProductsState.productsSuccess(products));
      },
      failure: (error) {
        emit(ProductsState.productsError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  ProductDetails? product;
  int productAmount = 1;
  double productTotalPrice = 0.0;
  Future<void> getProductById(int id) async {
    emit(ProductsState.productByIdLoading());
    final result = await _productsRepo.findProductById(id);
    result.when(
      success: (response) async {
        product = response.product;
        productTotalPrice = calculateNewPrice(product!.price!, product!.offer!);
        emit(ProductsState.productByIdSuccess(response));
      },
      failure: (error) {
        emit(ProductsState.productByIdError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void getTotalPriceOfProduct() {
    productTotalPrice = productAmount * calculateNewPrice(product!.price!, product!.offer!);
    productTotalPrice = double.parse(productTotalPrice.toStringAsFixed(4));
    emit(ProductsState.productByIdSuccess(ProductByIdResponseModel(product: product)));
  }

  @override
  Future<void> close() {
    searchController.dispose();

    return super.close();
  }

  void toggleFavorite(int productId, bool isAdding) {
    int index = products.indexWhere((p) => p.id == productId);
    if (index != -1) {
      products[index].favourite = !isAdding;
      emit(ProductsState.productsSuccess(List.from(products)));
    }
  }
}
