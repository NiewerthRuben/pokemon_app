import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/repository/service_repository.dart';

import '../services/api_service.dart';

class PokemonApiRepository extends ServiceRepository {
  ApiService? apiService;

  @override
  Future<PokemonDetailData?> getPokemonDetails(String pokemonName) {
    // TODO: implement getPokemonDetails
    throw UnimplementedError();
  }

  @override
  Future<PokemonListResponseData?> getPokemonList(int offset, int limit) async {
    apiService ??= ApiService.create(timeout: 10);
    return await apiService!.getPokemonList(limit: 1400);
  }
}
