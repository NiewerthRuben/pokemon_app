// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListResponseData _$PokemonListResponseDataFromJson(
  Map<String, dynamic> json,
) => PokemonListResponseData(
  count: (json['count'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => PokemonItemData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PokemonListResponseDataToJson(
  PokemonListResponseData instance,
) => <String, dynamic>{'count': instance.count, 'results': instance.results};
