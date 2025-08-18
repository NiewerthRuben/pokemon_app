import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/data/pokemon_stat_data.dart';
import 'package:pokemon_app/repository/service_repository.dart';

import '../data/pokemon_item_data.dart';
import '../services/api_service.dart';

class PokemonApiRepository extends ServiceRepository {
  ApiService? apiService;

  @override
  Future<PokemonListResponseData?> getPokemonList({
    required int pokemonMaxDownloadCount,
  }) async {
    apiService ??= ApiService.create(timeoutSeconds: 10);
    return await apiService!.getPokemonList(limit: pokemonMaxDownloadCount);
  }

  @override
  Future<PokemonItemData?> getPokemonDetails(String pokemonName) async {
    final result = await apiService?.getPokemonDetail(pokemonName);

    if (result == null) return null;
    return PokemonItemData(
      isFavorite: false,
      firstType: result.types?.first?.type.name,
      name: result.name,
      imageUrl: result.sprites?.frontDefault,
      stats: result.stats,
    );
  }

  @override
  Future<PokemonStatData?> getPokemonStats(String pokemonName) {
    // TODO: implement getPokemonStats
    throw UnimplementedError();
  }
}
