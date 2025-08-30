import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/pokemon_item_data.dart';
import '../../../repository/instances_repository.dart';
import '../../../repository/main_repository.dart';

part 'evolution_state.dart';

part 'evolution_cubit.freezed.dart';

class EvolutionCubit extends Cubit<EvolutionState> {
  final InstancesRepository instancesRepository;
  final MainRepository mainRepository;
  final String pokemonName;

  Future<void> loadEvolution() async {
    if (_processing) return;
    _processing = true;
    final cached = mainRepository.getCachedEvolution(pokemonName);
    if (cached != null && cached.isNotEmpty) {
      emit(EvolutionState.evolutionLoaded(stages: cached));
      return;
    }

    emit(const EvolutionState.evolutionLoading());

    try {
      final stages = await instancesRepository.serviceAPI
          .getEvolutionChainForPokemon(pokemonName);

      final safeStages = stages ?? <PokemonItemData>[];

      mainRepository.cacheEvolution(pokemonName, safeStages);

      _processing = false;
      emit(EvolutionState.evolutionLoaded(stages: safeStages));
    } catch (e, st) {
      _processing = false;
      emit(EvolutionState.evoltionFailure(message: e.toString()));
    }
  }

  EvolutionCubit({
    required this.instancesRepository,
    required this.mainRepository,
    required this.pokemonName,
  }) : super(const EvolutionState.evolutionInitial()) {
    loadEvolution();
  }

  bool _processing = false;
}
