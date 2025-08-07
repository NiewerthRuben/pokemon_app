// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonTypeData _$PokemonTypeDataFromJson(Map<String, dynamic> json) =>
    PokemonTypeData(
      slot: (json['slot'] as num).toInt(),
      type: TypeInfoData.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeDataToJson(PokemonTypeData instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};
