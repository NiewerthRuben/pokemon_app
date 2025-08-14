import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/repository/main_repository.dart';

part 'pokemon_list_state.dart';

part 'pokemon_list_cubit.freezed.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  final MainRepository mainRepository;

  PokemonListCubit({required this.mainRepository})
    : super(const PokemonListState.pokemonListInitial());

  Future<void> initialPokemonList() async {
    emit(
      PokemonListState.pokemonListInitialized(
        pokemons: mainRepository.pokemonsWithDetails,
      ),
    );
  }
}
