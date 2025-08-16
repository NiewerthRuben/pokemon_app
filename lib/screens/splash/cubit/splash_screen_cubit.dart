import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/repository/preferences_repository.dart';
import '../../../data/pokemon_item_data.dart';

part 'splash_screen_state.dart';

part 'splash_screen_cubit.freezed.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  final MainRepository mainRepository;
  final InstancesRepository instancesRepository;
  final PreferencesRepository preferencesRepository;

  SplashScreenCubit({
    required this.mainRepository,
    required this.instancesRepository,
    required this.preferencesRepository,
  }) : super(const SplashScreenState.splashScreenInitial());

  int pokemonMaxListValue = 0;

  Future<void> initializePokemon() async {
    final pokemonList = await instancesRepository.serviceAPI.getPokemonList(
      pokemonLimit: 2000,
    );
    await _loadPokemonListFromPreferences();
    if (mainRepository.pokemonsWithDetails.length !=
            pokemonList?.results.length &&
        pokemonList != null) {
      mainRepository.pokemonsWithDetails.clear();
      await _getPokemonListOnline(pokemonList);
      await _savePokemonListToPreferences();
    }
    mainRepository.getCategories();
    emit(SplashScreenState.splashScreenInitialized());
  }

  Future<void> _getPokemonListOnline(
    PokemonListResponseData pokemonList,
  ) async {
    pokemonMaxListValue = pokemonList.results.length;
    for (PokemonItemData pokemon in pokemonList.results) {
      await _getPokemonDetails(pokemon.name!);
    }
  }

  Future<void> _getPokemonDetails(String name) async {
    final result = await instancesRepository.serviceAPI.getPokemonDetails(name);
    if (result != null) {
      mainRepository.pokemonsWithDetails.add(result);
      emit(
        SplashScreenState.splashScreenInitializing(
          count:
              (mainRepository.pokemonsWithDetails.length.toDouble() /
              pokemonMaxListValue),
        ),
      );
    } else {
      pokemonMaxListValue = 0;
      emit(SplashScreenState.splashScreenFailed(errorMsg: "nüx"));
    }
  }

  Future<void> _savePokemonListToPreferences() async {
    List<String> pokemonStringList = [];
    for (final pokemon in mainRepository.pokemonsWithDetails) {
      pokemonStringList.add(jsonEncode(pokemon.toJson()));
    }
    preferencesRepository.savePokemonList(jsonEncode(pokemonStringList));
  }

  Future<List<PokemonItemData>?> _loadPokemonListFromPreferences() async {
    final String? jsonString = await preferencesRepository.loadPokemonList();

    if (jsonString == null || jsonString.isEmpty) return null;

    final List<dynamic> jsonList = jsonDecode(jsonString);

    final List<PokemonItemData> pokemonList = jsonList
        .map((jsonString) => PokemonItemData.fromJson(jsonDecode(jsonString)))
        .toList();

    mainRepository.pokemonsWithDetails.addAll(pokemonList);

    return pokemonList;
  }
}
