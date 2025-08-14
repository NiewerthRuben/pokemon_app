part of 'pokemon_list_cubit.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState.pokemonListInitial() = PokemonListInitial;

  const factory PokemonListState.pokemonListInitialized({
    required List<PokemonItemData> pokemons,
  }) = PokemonListInitialized;

  const factory PokemonListState.pokemonListFiltered({
    required List<PokemonItemData> pokemons,
  }) = PokemonListFiltered;

  const factory PokemonListState.pokemonListError({
    required String errorMsg,
  }) = PokemonListError;
}
