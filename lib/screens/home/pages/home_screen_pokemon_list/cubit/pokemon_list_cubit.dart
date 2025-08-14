import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/repositories/pokemon_repository.dart';

part 'pokemon_list_state.dart';

part 'pokemon_list_cubit.freezed.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  final PokemonRepository pokemonRepository;
  final MainRepository mainRepository;

  PokemonListCubit({
    required this.mainRepository,
    required this.pokemonRepository,
  }) : super(const PokemonListState.pokemonListInitial());

  Future<void> initialPokemonList() async {
    pokemonRepository.generalPokemonList = List.of(
      mainRepository.pokemonsWithDetails,
    );
    pokemonRepository.favoritesPokemonList = List.of(
      mainRepository.pokemonsWithDetails
          .where((e) => e.firstType == "grass")
          .toList(),
    );
    emit(
      PokemonListState.pokemonListInitialized(
        pokemonList: pokemonRepository.generalPokemonList,
        favoriteList: pokemonRepository.favoritesPokemonList,
      ),
    );
  }
}
