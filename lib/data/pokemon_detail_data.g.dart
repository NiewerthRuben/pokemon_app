// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailData _$PokemonDetailDataFromJson(Map<String, dynamic> json) =>
    PokemonDetailData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : PokemonTypeData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$PokemonDetailDataToJson(PokemonDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites,
      'types': instance.types,
    };
