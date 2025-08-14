import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/widgets/grid_view_item.dart';

import '../../../../../enums/pokemon_type_enum.dart';
import '../../../../../repository/main_repository.dart';
import '../../../cubit/home_screen_cubit.dart';

class HomeScreenFavoritesTab extends StatelessWidget {
  final List<PokemonItemData> favorites;

  const HomeScreenFavoritesTab({super.key, required this.favorites});

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
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final pokemon = favorites[index];
          return GridViewItem(pokemon: pokemon);
        },
      ),
    );
  }
}
