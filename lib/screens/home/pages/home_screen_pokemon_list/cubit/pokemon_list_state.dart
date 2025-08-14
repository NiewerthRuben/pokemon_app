part of 'pokemon_list_cubit.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState.pokemonListInitial() = PokemonListInitial;

  const factory PokemonListState.pokemonListInitialized({
    required List<PokemonItemData> pokemonList,
    required List<PokemonItemData> favoriteList,
  }) = PokemonListInitialized;

  const factory PokemonListState.pokemonListChanging() = PokemonListChanging;

  const factory PokemonListState.pokemonListError({required String errorMsg}) =
      PokemonListError;
}
