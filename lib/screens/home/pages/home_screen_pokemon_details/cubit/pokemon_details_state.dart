part of 'pokemon_details_cubit.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState.pokemonDetailInitial() =
      PokemonDetailInitial;

  const factory PokemonDetailsState.pokemonDetailInitialized() =
      PokemonDetailInitialized;
}
