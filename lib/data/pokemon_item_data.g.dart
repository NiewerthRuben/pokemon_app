// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonItemData _$PokemonItemDataFromJson(Map<String, dynamic> json) =>
    PokemonItemData(
      name: json['name'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      firstType: json['firstType'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      stats: (json['stats'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : PokemonStatData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      species: json['species'] == null
          ? null
          : PokemonSpeciesData.fromJson(
              json['species'] as Map<String, dynamic>,
            ),
      evolutionChain: json['evolutionChain'] == null
          ? null
          : EvolutionChainData.fromJson(
              json['evolutionChain'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PokemonItemDataToJson(PokemonItemData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'firstType': instance.firstType,
      'isFavorite': instance.isFavorite,
      'stats': instance.stats,
      'species': instance.species,
      'evolutionChain': instance.evolutionChain,
    };
