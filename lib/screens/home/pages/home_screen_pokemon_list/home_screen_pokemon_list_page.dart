import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/main_repository.dart';

import '../../cubit/home_screen_cubit.dart';
import 'widgets/home_screen_favorites_tab.dart';
import 'widgets/home_screen_general_tab.dart';

class HomeScreenPokemonListPage extends StatelessWidget {
  const HomeScreenPokemonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRepository = context.read<MainRepository>();
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          if (state is HomeScreenError) {
            return Center(child: Text(state.errorMsg));
          } else {
            return Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      HomeScreenGeneralTab(
                        pokemons: mainRepository.pokemonsWithDetails,
                      ),
                      HomeScreenFavoritesTab(),
                    ],
                  ),
                ),
                TabBar(tabs: [Text("General"), Text("Favorites")]),
              ],
            );
          }
        },
      ),
    );
  }
}
