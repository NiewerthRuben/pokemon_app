
import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon_app/data/pokemon_type_data.dart';
import 'package:pokemon_app/data/sprites_data.dart';

part 'pokemon_detail_data.g.dart';

@JsonSerializable()
class PokemonDetailData {
  final int id;
  final String name;
  final Sprites sprites;
  final List<PokemonTypeData> types;

  PokemonDetailData({
    required this.id,
    required this.name,
    required this.sprites,
    required this.types,
  });

  factory PokemonDetailData.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDetailDataToJson(this);
}