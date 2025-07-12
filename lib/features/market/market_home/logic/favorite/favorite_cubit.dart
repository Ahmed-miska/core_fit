import 'dart:async';

import 'package:core_fit/features/market/market_home/data/repos/favorite_repo.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepo _favoriteRepo;
  FavoriteCubit(this._favoriteRepo) : super(FavoriteState.initial());
    final StreamController<List<Product>> _favoriteStreamController = StreamController.broadcast();


  List<Product> products = [];

  Future<void> getFavourites() async {
    emit(FavoriteState.loading());
    final result = await _favoriteRepo.getFavourites();
    result.when(
      success: (response) {
        products = List.from(response.data ?? []);
        _favoriteStreamController.add(products); // إرسال التحديث عبر الـ Stream

        emit(FavoriteState.success(products));
      },
      failure: (error) {
        emit(FavoriteState.error(error: error.apiErrorModel.message ?? 'حدث خطأ'));
      },
    );
  }

  Future<void> toggleFavorite(int productId, bool isAdding) async {
    emit(FavoriteState.toggleFavouritesLoading());
    final result = await _favoriteRepo.toggleFavourites(productId, isAdding ? 'remove' : 'add');
    result.when(
      success: (_) {
        if (!isAdding) {
          final product = products.firstWhere((p) => p.id == productId, orElse: () => Product(id: productId));
          product.favourite = true;
          if (!products.contains(product)) products.add(product);
        } else {
          products.removeWhere((p) => p.id == productId);
        }
        _favoriteStreamController.add(products); // إرسال التحديث عبر الـ Stream

        emit(FavoriteState.success(List.from(products))); // تحديث الحالة بعد الحذف
      },
      failure: (error) {
        emit(FavoriteState.toggleFavouritesError(error: error.apiErrorModel.message ?? 'حدث خطأ'));
      },
    );
  }

 
}
