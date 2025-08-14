import 'package:flutter/material.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/widgets/grid_view_item.dart';

class HomeScreenGeneralTab extends StatelessWidget {
  final List<PokemonItemData> pokemons;

  const HomeScreenGeneralTab({super.key, required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 3 / 4,
        ),
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          final pokemon = pokemons[index];
          return GridViewItem(pokemon: pokemon);
        },
      ),
    );
  }
}
