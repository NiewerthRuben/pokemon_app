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
    try {
      final storedList = await _loadPokemonListFromPreferences();
      if (storedList.isNotEmpty) {
        mainRepository.pokemonsWithDetails = List.of(storedList);
        mainRepository.getCategories();
        emit(SplashScreenState.splashScreenInitialized());
        return;
      }

      final pokemonList = await instancesRepository.serviceAPI.getPokemonList(
        pokemonMaxDownloadCount: 2000,
      );
      if (pokemonList == null) return;

      await _getPokemonListOnline(pokemonList);
      mainRepository.getCategories();

      await _savePokemonListToPreferences();

      emit(SplashScreenState.splashScreenInitialized());
    } catch (e) {
      emit(SplashScreenState.splashScreenFailed(errorMsg: e.toString()));
    }
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
    final pokemonJsonList = mainRepository.pokemonsWithDetails
        .map((pokemon) => pokemon.toJson())
        .toList();

    preferencesRepository.savePokemonList(jsonEncode(pokemonJsonList));
  }

  Future<List<PokemonItemData>> _loadPokemonListFromPreferences() async {
    final String? storedJsonString = await preferencesRepository
        .loadPokemonList();
    if (storedJsonString == null) return [];

    final List<dynamic> jsonList = jsonDecode(storedJsonString);

    return jsonList
        .cast<Map<String, dynamic>>()
        .map((e) => PokemonItemData.fromJson(e))
        .toList();
  }
}
