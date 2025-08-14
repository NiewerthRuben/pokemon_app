part of 'favorites_cubit.dart';

@Freezed(equal: false)
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.favoritesInitial() = FavoritesInitial;

  const factory FavoritesState.favoritesStateChanged({
    required PokemonItemData pokemon,
  }) = FavoritesStateChanged;
}
