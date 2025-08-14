import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';

class MainRepository {
  List<PokemonItemData> pokemonsWithDetails = [];

  List<String> pokemonCategories = [];

  PokemonItemData selectedPokemon = PokemonItemData();

  void getCategories() {
    pokemonCategories =
        pokemonsWithDetails
            .map((p) => p.firstType?.toLowerCase())
            .whereType<String>()
            .toSet()
            .toList()
          ..sort();

    pokemonCategories.insert(0, "all");
  }
}
