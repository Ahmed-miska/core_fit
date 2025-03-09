part of 'favorite_cubit.dart';

@freezed

class FavoriteState<T> with _$FavoriteState<T> {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = FavoriteLoading;
  const factory FavoriteState.success(List<Product> products) = FavoriteScuccess<T>;
  const factory FavoriteState.error({required String error}) = FavoriteError;


  const factory FavoriteState.toggleFavouritesLoading() = ToggleFavouritesLoading ;
  const factory FavoriteState.toggleFavouritesSuccess() = ToggleFavouritesSuccess ;
  const factory FavoriteState.toggleFavouritesError({required String error}) = ToggleFavouritesError;


 
}
