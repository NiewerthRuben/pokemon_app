
import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon_app/data/type_info_data.dart';

part 'pokemon_type_data.g.dart';

@JsonSerializable()
class PokemonTypeData {
  final int slot;
  final TypeInfoData type;

  PokemonTypeData({
    required this.slot,
    required this.type,
  });

  factory PokemonTypeData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeDataToJson(this);
}