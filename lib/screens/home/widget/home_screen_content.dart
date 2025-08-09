import 'package:flutter/material.dart';
import 'package:pokemon_app/repository/service_repository.dart';
import 'package:pokemon_app/repository/mock_repository.dart';
import '../../../data/pokemon_list_response_data.dart';
import '../../../enums/pokemon_type_enum.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final ServiceRepository repository = MockRepository();

    return Scaffold(
      appBar: AppBar(title: const Text("Pokémon Liste")),
      body: FutureBuilder<PokemonListResponseData?>(
        future: repository.getPokemonList(0, 20),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Fehler: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final pokemons = snapshot.data!.results;

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
                  final pokemonType = PokemonTypeEnum.fromString(
                    pokemon.firstType,
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
                        Image.network(
                          pokemon.imageUrl!,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          pokemon.name!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Typ: ${pokemon.firstType}",
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            // Wenn keine Daten vorhanden sind
            return const Center(child: Text('Keine Pokémon gefunden.'));
          }
        },
      ),
    );
  }
}
