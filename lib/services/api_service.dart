import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../data/pokemon_detail_data.dart';
import '../data/pokemon_list_response_data.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/pokemon")
  Future<PokemonListResponseData> getPokemonList({
    @Query("offset") required int offset,
    @Query("limit") required int limit,
  });

  @GET("/pokemon/{name}")
  Future<PokemonDetailData> getPokemonDetail(@Path("name") String name);

}
