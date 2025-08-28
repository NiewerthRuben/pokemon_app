part of 'evolution_cubit.dart';

@freezed
class EvolutionState with _$EvolutionState {
  const factory EvolutionState.initial() = _Initial;

  const factory EvolutionState.loading() = _Loading;

  const factory EvolutionState.loaded({required List<PokemonItemData> stages}) =
      _Loaded;

  const factory EvolutionState.failure({required String message}) = _Failure;
}
