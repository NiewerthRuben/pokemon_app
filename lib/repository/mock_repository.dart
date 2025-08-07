import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';
import 'package:pokemon_app/data/pokemon_list_response_data.dart';
import 'package:pokemon_app/repository/service_repository.dart';

class MockRepository extends ServiceRepository {
  @override
  Future<PokemonDetailData?> getPokemonDetails(String pokemonName) {
    final pokemonDetails =
        PokemonDetailData(id: 1, name: "Fledermaus", sprites: null, types: null)
            as Future<PokemonDetailData>;

    return pokemonDetails;
  }

  @override
  Future<PokemonListResponseData?> getPokemonList(int offset, int limit) async {
    final Future<PokemonListResponseData> pokemonList =
        ([
              PokemonListResponseData(
                count: 2,
                results: [
                  PokemonItemData(name: "Fledermaus", url: "url1"),
                  PokemonItemData(name: "Hund", url: "url2"),
                ],
              ),
            ])
            as Future<PokemonListResponseData>;

    return pokemonList;
  }
}
