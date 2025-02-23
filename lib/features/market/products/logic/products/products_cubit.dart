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

  int categoryId = 1;
  int page = 1;
  bool hasReachedMax = false;
  void reset() {
    products = [];
    page = 1;
    hasReachedMax = false;
    getProducts();
  }

  Future<void> getProducts({int? marketId, String? name}) async {
    if (page == 1) {
      emit(ProductsState.productsLoading());
    }
    final result = await _productsRepo.getProducts(page: page, subCategoryId: categoryId, marketId: marketId, name: searchController.text);
    result.when(
      success: (response) {
        if (response.products!.isNotEmpty) {
          products = products + response.products!;
        }
        hasReachedMax = response.totalPages == page;
        page++;
        emit(ProductsState.productsSuccess(products));
      },
      failure: (error) {
        emit(ProductsState.productsError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Product? product;
  Future<void> getProductById(int id) async {
    final result = await _productsRepo.findProductById(id);
    result.when(
      success: (response) async {
        product = response.product;
        emit(ProductsState.productByIdSuccess(response));
      },
      failure: (error) {
        emit(ProductsState.productByIdError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
