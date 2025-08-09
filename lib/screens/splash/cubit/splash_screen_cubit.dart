import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import '../../../data/pokemon_item_data.dart';

part 'splash_screen_state.dart';

part 'splash_screen_cubit.freezed.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  final MainRepository mainRepository;
  final InstancesRepository instancesRepository;

  SplashScreenCubit({
    required this.mainRepository,
    required this.instancesRepository,
  }) : super(const SplashScreenState.splashScreenInitial());

  int pokemonMaxListValue = 0;

  Future<void> initializePokemon() async {
    final pokemonList = await _getPokemonList();
    if (pokemonList != null) {
      pokemonMaxListValue = pokemonList.results.length;
      for (PokemonItemData pokemon in pokemonList.results) {
        await _getPokemonDetails(pokemon.name!);
      }
    } else {
      pokemonMaxListValue = 0;
      emit(SplashScreenState.splashScreenFailed(errorMsg: "nüx"));
    }
    emit(SplashScreenState.splashScreenInitialized());
  }

  Future<PokemonListResponseData?> _getPokemonList() async {
    final pokemonList = await instancesRepository.serviceAPI.getPokemonList(50);
    return pokemonList;
  }

  Future<void> _getPokemonDetails(String name) async {
    final result = await instancesRepository.serviceAPI.getPokemonDetails(name);
    if (result != null) {
      mainRepository.pokemonWithDetails.add(result);
      emit(
        SplashScreenState.splashScreenInitializing(
          count:
              (mainRepository.pokemonWithDetails.length.toDouble() /
              pokemonMaxListValue),
        ),
      );
    }
  }
}
