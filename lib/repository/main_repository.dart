import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';

class MainRepository {
  List<PokemonItemData> pokemonsWithDetails = [];

  PokemonItemData selectedPokemon = PokemonItemData();
}
