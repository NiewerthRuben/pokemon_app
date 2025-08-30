part of 'evolution_cubit.dart';

@freezed
class EvolutionState with _$EvolutionState {
  const factory EvolutionState.evolutionInitial() = EvolitionInitial;

  const factory EvolutionState.evolutionLoading() = EvolutionLoading;

  const factory EvolutionState.evolutionLoaded({
    required List<PokemonItemData> stages,
  }) = EvolutionLoaded;

  const factory EvolutionState.evoltionFailure({required String message}) =
      EvolutionFailure;
}
