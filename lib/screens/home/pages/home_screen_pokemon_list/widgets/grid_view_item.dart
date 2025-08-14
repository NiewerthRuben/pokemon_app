import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';

import '../../../../../enums/pokemon_type_enum.dart';
import '../../../../../repository/main_repository.dart';
import '../../../cubit/home_screen_cubit.dart';

class GridViewItem extends StatelessWidget {
  final PokemonItemData pokemon;

  const GridViewItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final pokemonType = PokemonTypeEnum.fromString(pokemon.firstType);
    final backgroundColor = pokemonType.color;
    return GestureDetector(
      onTap: () {
        context.read<MainRepository>().selectedPokemon = pokemon;
        context.read<HomeScreenCubit>().goToDetailsPage();
      },
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
                ? Image.network(
                    pokemon.imageUrl!,
                    height: 150,
                    fit: BoxFit.contain,
                  )
                : Icon(Icons.close),
            IconButton(
              icon: Icon(
                pokemon.isFavorite ? Icons.star : Icons.star_border,
                color: pokemon.isFavorite ? Colors.yellow : Colors.black,
              ),
              onPressed: () {},
            ),
            Text(
              // Niemals ausrufezeichen ohne if abfrage = null checken
              pokemon.name != null ? pokemon.name!.capitalize() : "Nix Name",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              "Typ: ${pokemon.firstType?.capitalize()}",
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
