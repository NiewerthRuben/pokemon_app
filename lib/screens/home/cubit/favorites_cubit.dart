import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/screens/home/repositories/pokemon_repository.dart';

import '../../../data/pokemon_item_data.dart';

part 'favorites_state.dart';

part 'favorites_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final PokemonRepository pokemonRepository;

  FavoritesCubit({required this.pokemonRepository})
    : super(const FavoritesState.favoritesInitial());

  Future<void> changePokemonFavoriteList(PokemonItemData pokemon) async {
    if (pokemon.isFavorite) {
      pokemonRepository.favoritesPokemonList.add(pokemon);
    } else {
      pokemonRepository.favoritesPokemonList.remove(pokemon);
    }

    emit(FavoritesState.favoritesStateChanged(pokemon: pokemon.copyWith()));
  }
}
