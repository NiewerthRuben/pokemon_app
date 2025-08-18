import 'package:flutter/material.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/enums/pokemon_type_enum.dart';
import 'package:pokemon_app/extensions/color_contrast_extension.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/cubit/home_screen_cubit.dart';
import 'package:provider/provider.dart';

class HomeScreenPokemonDetailsPage extends StatelessWidget {
  const HomeScreenPokemonDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemon = context.read<MainRepository>().selectedPokemon;
    final pokemonType = pokemon.firstType;
    final backgroundColor = PokemonTypeEnum.fromString(pokemonType).color;
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.read<HomeScreenCubit>().goToListPage();
      },
      child: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (pokemon.imageUrl != null)
                  ? Image.network(
                      pokemon.imageUrl!,
                      height: 200,
                      fit: BoxFit.contain,
                    )
                  : Icon(Icons.close),
              const SizedBox(height: 20),

              Text(
                (pokemon.name != null) ? pokemon.name!.capitalize() : "",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor.contrastColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Typ: ${pokemon.firstType?.capitalize()}',
                style: TextStyle(
                  fontSize: 18,
                  color: backgroundColor.contrastColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
