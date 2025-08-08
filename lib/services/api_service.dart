import 'dart:io';

import 'package:dio/io.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../data/pokemon_detail_data.dart';
import '../data/pokemon_list_response_data.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  factory ApiService.create({required int timeout}) {
    final dio = Dio(BaseOptions(connectTimeout: Duration(seconds: timeout)));
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) {
                return true;
              };

          return client;
        };
    return ApiService._(dio: dio);
  }

  factory ApiService._({required Dio dio}) {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) {
                return true;
              };
          return client;
        };
    return _ApiService(dio);
  }

  @GET("/pokemon")
  Future<PokemonListResponseData> getPokemonList({
    @Query("limit") required int limit,
  });

  @GET("/pokemon/{name}")
  Future<PokemonDetailData> getPokemonDetail(@Path("name") String name);
}
