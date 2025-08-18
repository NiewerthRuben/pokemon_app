import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/extensions/color_contrast_extension.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/screens/home/cubit/favorites_cubit.dart';

import '../../../../../enums/pokemon_type_enum.dart';
import '../../../../../repository/main_repository.dart';
import '../../../cubit/home_screen_cubit.dart';

class GridViewItem extends StatelessWidget {
  final PokemonItemData pokemon;

  const GridViewItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();
    final pokemonType = PokemonTypeEnum.fromString(pokemon.firstType);
    final backgroundColor = pokemonType.color;

    final textColor = getContrastingTextColor(backgroundColor);

    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<MainRepository>().selectedPokemon = pokemon;
            context.read<HomeScreenCubit>().goToDetailsPage();
          },
          child: Container(
            padding: pokemon.isFavorite ? EdgeInsets.all(4) : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: SweepGradient(
                colors: [
                  Colors.brown[200]!,
                  Colors.redAccent,
                  Colors.blueAccent,
                  Colors.amber,
                  Colors.green,
                  Colors.cyanAccent,
                  Colors.orange,
                  Colors.deepPurpleAccent,
                  Colors.brown,
                  Colors.lightBlueAccent,
                  Colors.pinkAccent,
                  Colors.lightGreen,
                  Colors.grey,
                  Colors.indigo,
                  Colors.indigoAccent,
                  Colors.black54,
                  Colors.blueGrey,
                  Colors.pink,
                  Colors.grey.shade300,
                ],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pokemon.imageUrl != null
                      ? Expanded(
                          child: Image.network(
                            pokemon.imageUrl!,
                            fit: BoxFit.fill,
                          ),
                        )
                      : Icon(Icons.close),

                  IconButton(
                    icon: Icon(
                      pokemon.isFavorite ? Icons.star : Icons.star_border,
                      color: pokemon.isFavorite
                          ? Colors.yellow
                          : backgroundColor.contrastColor,
                    ),
                    onPressed: () {
                      pokemon.isFavorite = !pokemon.isFavorite;
                      favoritesCubit.changePokemonFavoriteList(pokemon);
                    },
                  ),
                  Text(
                    // Niemals ausrufezeichen ohne if abfrage = null checken
                    pokemon.name != null
                        ? pokemon.name!.capitalize()
                        : "Nix Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: backgroundColor.contrastColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Typ: ${pokemon.firstType?.capitalize()}",
                    style: TextStyle(
                      fontSize: 14,
                      color: backgroundColor.contrastColor,
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Color getContrastingTextColor(Color background) {
  double luminance = background.computeLuminance();
  return luminance > 0.5 ? Colors.black : Colors.white;
}
