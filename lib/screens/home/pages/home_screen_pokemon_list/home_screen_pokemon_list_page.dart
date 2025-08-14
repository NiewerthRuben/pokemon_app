import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/cubit/pokemon_list_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/widgets/home_screen_pokemon_text_field.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/widgets/pokemon_category_dialog.dart';

import '../../cubit/home_screen_cubit.dart';
import 'widgets/home_screen_favorites_tab.dart';
import 'widgets/home_screen_general_tab.dart';

class HomeScreenPokemonListPage extends StatelessWidget {
  const HomeScreenPokemonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PokemonItemData> favoritePokemons = [];
    List<PokemonItemData> generalPokemons = [];
    final mainRepository = context.read<MainRepository>();
    String searchPattern = "";
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: HomeScreenPokemonTextField(
                  onChanged: (p0) {
                    searchPattern = p0;
                  },
                ),
              ),
              SizedBox(width: 16),
              IconButton(
                onPressed: () async {
                  final result = await showDialog(
                    context: context,
                    builder: (context) => PokemonCategoryDialog(),
                  );
                },
                icon: Icon(Icons.category),
              ),
            ],
          ),
        ),
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: BlocBuilder<PokemonListCubit, PokemonListState>(
              builder: (context, state) {
                if (state is PokemonListError) {
                  return Center(child: Text(state.errorMsg));
                }

                if (state is PokemonListInitialized) {
                  generalPokemons = state.pokemonList;
                  favoritePokemons = state.favoriteList;
                  return Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          children: [
                            HomeScreenGeneralTab(pokemons: generalPokemons),
                            HomeScreenFavoritesTab(favorites: favoritePokemons),
                          ],
                        ),
                      ),
                      TabBar(tabs: [Text("General"), Text("Favorites")]),
                    ],
                  );
                } else {
                  return Center(child: Text("Nüx"));
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
