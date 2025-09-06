import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_state.dart';

part 'pokemon_details_cubit.freezed.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit()
    : super(const PokemonDetailsState.pokemonDetailInitialized());

  Future<void> initial() async {
    emit(PokemonDetailsState.pokemonDetailInitial());
    emit(PokemonDetailsState.pokemonDetailInitialized());
  }
}
