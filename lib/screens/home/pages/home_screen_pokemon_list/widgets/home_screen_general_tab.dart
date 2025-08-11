import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/cubit/home_screen_cubit.dart';
import 'package:pokemon_app/screens/home/home_screen.dart';
import '../../../../../enums/pokemon_type_enum.dart';
import '../../../../../navigations/e_routes.dart';

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
                  const SizedBox(height: 10),
                  Text(
                    // Niemals ausrufezeichen ohne if abfrage = null checken
                    pokemon.name != null
                        ? pokemon.name!.capitalize()
                        : "No name found",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
        },
      ),
    );
  }
}
