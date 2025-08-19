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
    final pokemonListCubit = context.read<PokemonListCubit>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: HomeScreenPokemonTextField(
                  onChanged: (p0) {
                    pokemonListCubit.getPokemonListBySearch(p0);
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
                  if (result != null) {
                    pokemonListCubit.getPokemonListByCategory(result);
                  }
                },
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.orange,
                  size: 30,
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
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
                  return Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          children: [
                            HomeScreenGeneralTab(pokemons: state.pokemonList),
                            HomeScreenFavoritesTab(
                              favorites: state.favoriteList,
                            ),
                          ],
                        ),
                      ),
                      TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        indicatorPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(icon: Icon(Icons.list_alt), text: "General"),
                          Tab(
                            icon: Icon(Icons.favorite_border),
                            text: "Favorites",
                          ),
                        ],
                      ),
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
