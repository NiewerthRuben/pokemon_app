import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/pokemon_item_data.dart';

part 'home_screen_state.dart';

part 'home_screen_cubit.freezed.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(const HomeScreenState.homeScreenInitial());

  Future<void> goToDetailsPage() async {
    emit(
      HomeScreenState.homeScreenGoToDetailsPage(
        pokemonItemData: PokemonItemData(),
      ),
    );
  }

  Future<void> goToListPage() async {
    emit(HomeScreenState.homeScreenGoToListPage());
  }
}
