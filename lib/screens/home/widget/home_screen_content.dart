import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import '../../../data/pokemon_list_response_data.dart';
import '../../../enums/pokemon_type_enum.dart';
import '../../../localization/generated/l10n.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final instancesRepository = context
        .read<InstancesRepository>(); // TODO: remove later only for testing!
    final localize = Localize.of(context);
    final mainRepository = context.read<MainRepository>();

    return Scaffold(
      appBar: AppBar(title: Text(localize.homeScreenPokemonListText)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 3 / 4,
          ),
          itemCount: mainRepository.pokemonWithDetails.length,
          itemBuilder: (context, index) {
            final pokemon = mainRepository.pokemonWithDetails[index];
            final pokemonType = PokemonTypeEnum.fromString(
              pokemon.types?.first?.type.name,
            );
            final backgroundColor = pokemonType.color;

            return Container(
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
                  (pokemon.sprites != null &&
                          pokemon.sprites!.frontDefault != null)
                      ? Image.network(
                          pokemon.sprites!.frontDefault!,
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
                    "Typ: ${pokemon.types?.first?.type.name.capitalize()}",
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
