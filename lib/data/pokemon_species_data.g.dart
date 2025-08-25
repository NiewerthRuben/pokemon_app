// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonSpeciesData _$PokemonSpeciesDataFromJson(Map<String, dynamic> json) =>
    PokemonSpeciesData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      evolutionChain: EvolutionChainLinkData.fromJson(
        json['evolution_chain'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonSpeciesDataToJson(PokemonSpeciesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'evolution_chain': instance.evolutionChain,
    };
