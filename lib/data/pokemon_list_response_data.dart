
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';

part 'pokemon_list_response_data.g.dart';

@JsonSerializable()
class PokemonListResponseData {
  final int count;
  final List<PokemonItemData> results;

  PokemonListResponseData({required this.count, required this.results});

  factory PokemonListResponseData.fromJson(Map<String, dynamic> json) {
    return PokemonListResponseData(
      count: json['count'],
      results: List<PokemonItemData>.from(
        json['results'].map((x) => PokemonItemData.fromJson(x)),
      ),
    );
  }
}
