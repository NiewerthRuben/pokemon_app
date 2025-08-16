import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/repository/service_repository.dart';

class MockRepository extends ServiceRepository {
  @override
  Future<PokemonItemData?> getPokemonDetails(String pokemonName) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => PokemonItemData(
        firstType: "grass",
        name: "Fledermaus",
        isFavorite: true,
        imageUrl: "beispielURL",
        stats: [],
      ),
    );
  }

  @override
  Future<PokemonListResponseData?> getPokemonList({required int pokemonLimit}) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => PokemonListResponseData(
        count: 3,
        results: [
          PokemonItemData(
            name: "Bulbasaur",
            imageUrl:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
            firstType: "Grass",
          ),
          PokemonItemData(
            name: "Charmander",
            imageUrl:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
            firstType: "Fire",
          ),
          PokemonItemData(
            name: "Squirtle",
            imageUrl:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png",
            firstType: "Water",
          ),
        ],
      ),
    );
  }
}
