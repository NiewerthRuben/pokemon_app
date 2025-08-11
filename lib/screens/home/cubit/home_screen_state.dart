part of 'home_screen_cubit.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.homeScreenInitial() = HomeScreenInitial;

  const factory HomeScreenState.homeScreenGoToDetailsPage({
    required PokemonItemData pokemonItemData,
  }) = HomeScreenGoToDetailsPage;

  const factory HomeScreenState.homeScreenGoToListPage() =
      HomeScreenGoToListPage;

  const factory HomeScreenState.homeScreenError({required String errorMsg}) =
      HomeScreenError;
}
