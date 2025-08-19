import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'pokemon_stat_data.g.dart';

@JsonSerializable()
class PokemonStatData {
  @JsonKey(name: 'base_stat')
  final int baseStat;

  @JsonKey(name: 'stat')
  final StatInfo stat;

  PokemonStatData({required this.baseStat, required this.stat});

  factory PokemonStatData.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonStatDataToJson(this);
}

@JsonSerializable()
class StatInfo {
  final String name;

  StatInfo({required this.name});

  factory StatInfo.fromJson(Map<String, dynamic> json) =>
      _$StatInfoFromJson(json);

  Map<String, dynamic> toJson() => _$StatInfoToJson(this);
}
