import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';

abstract class ServiceRepository{
  Future<PokemonListResponseData?> getPokemonList(int offset, int limit);
  Future<PokemonDetailData?> getPokemonDetails(String pokemonName);
}