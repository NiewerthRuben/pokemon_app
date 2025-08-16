import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';

abstract class ServiceRepository {
  Future<PokemonListResponseData?> getPokemonList({required int pokemonLimit});

  Future<PokemonItemData?> getPokemonDetails(String pokemonName);
}
