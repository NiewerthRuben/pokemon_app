// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonStatData _$PokemonStatDataFromJson(Map<String, dynamic> json) =>
    PokemonStatData(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: StatInfo.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonStatDataToJson(PokemonStatData instance) =>
    <String, dynamic>{'base_stat': instance.baseStat, 'stat': instance.stat};

StatInfo _$StatInfoFromJson(Map<String, dynamic> json) =>
    StatInfo(name: json['name'] as String);

Map<String, dynamic> _$StatInfoToJson(StatInfo instance) => <String, dynamic>{
  'name': instance.name,
};
