import 'package:core_fit/features/market/cart/data/models/cart_response_model.dart';
import 'package:core_fit/features/market/cart/data/repos/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo cartRepo;
  CartCubit(this.cartRepo) : super(CartState.initial());

  CartResponseModel? cartResponseModel;

  Future<void> getCart() async {
    emit(CartState.loading());
    final result = await cartRepo.getCart();
    result.when(
      success: (success) {
        cartResponseModel = success;
        emit(CartState.success(success));
      },
      failure: (failure) {
        emit(
          CartState.error(error: failure.apiErrorModel.message ?? ''),
        );
      },
    );
  }

  String addErrorMessage = '';

  Future<void> addCartItem(int productId, int quantity) async {
    emit(CartState.addLoading());
    final result = await cartRepo.addCartItem(productId, quantity);
    result.when(
      success: (success) {
        cartResponseModel = success;
        emit(CartState.success(success));
        emit(CartState.addSuccess(success));
      },
      failure: (failure) {
        addErrorMessage = failure.apiErrorModel.message ?? '';
        emit(CartState.addError(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> deleteCartItem() async {
    emit(CartState.deleteLoading());
    final result = await cartRepo.deleteCartItem();
    result.when(
      success: (success) {
        cartResponseModel = success;
        emit(CartState.deleteSuccess(success));
      },
      failure: (failure) {
        emit(CartState.deleteError(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }
}
