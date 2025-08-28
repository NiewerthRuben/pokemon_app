import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/data/pokemon_stat_data.dart';
import 'package:pokemon_app/repository/service_repository.dart';

import '../data/chain_link.dart';
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

  @override
  Future<List<PokemonItemData>> getEvolutionChainForPokemon(
    String pokemonName,
  ) async {
    apiService ??= ApiService.create(timeoutSeconds: 10);

    final species = await apiService!.getPokemonSpecies(pokemonName);
    final evoUrl = species?.evolutionChain?.url;
    if (evoUrl == null) return [];

    final idMatch = RegExp(r'/evolution-chain/(\d+)').firstMatch(evoUrl);
    if (idMatch == null) return [];

    final evoId = int.parse(idMatch.group(1)!);

    final evoData = await apiService!.getEvolutionChain(evoId);

    final speciesNames = <String>[];
    void traverseChain(ChainLink link) {
      if (link.species.name.isNotEmpty) {
        speciesNames.add(link.species.name);
      }
      if (link.evolvesTo.isNotEmpty) {
        for (final next in link.evolvesTo) {
          traverseChain(next);
        }
      }
    }

    traverseChain(evoData.chain);

    final List<PokemonItemData> stages = [];
    for (final name in speciesNames) {
      try {
        final detail = await apiService!.getPokemonDetail(name);
        if (detail != null) {
          stages.add(
            PokemonItemData(
              name: detail.name,
              imageUrl: detail.sprites?.frontDefault,
              firstType: detail.types?.isNotEmpty == true
                  ? detail.types!.first!.type.name
                  : null,
              isFavorite: false,
              stats: detail.stats,
            ),
          );
        }
      } catch (e) {}
    }

    return stages;
  }
}
