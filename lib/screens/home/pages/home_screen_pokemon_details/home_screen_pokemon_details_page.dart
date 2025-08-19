import 'package:flutter/material.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/enums/pokemon_type_enum.dart';
import 'package:pokemon_app/extensions/color_contrast_extension.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/cubit/home_screen_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/widgets/stat_bar_widget/stat_bar_widget.dart';
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
            if (pokemon.stats != null && pokemon.stats!.isNotEmpty) ...[
              Text(
                "Basiswerte:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor.contrastColor,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: pokemon.stats!.length,
                  itemBuilder: (context, index) {
                    final pokemonStat = pokemon.stats![index];
                    return StatBarWidget(
                      name: (pokemonStat?.stat.name != null)
                          ? pokemonStat!.stat.name
                          : "",
                      value: (pokemonStat?.baseStat != null)
                          ? pokemonStat!.baseStat
                          : 0,
                      textColor: backgroundColor.contrastColor,
                      barColor: (pokemon.firstType == "water")
                          ? Colors.black
                          : Colors.blue,
                    );
                  },
                ),
              ),
            ] else
              const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
