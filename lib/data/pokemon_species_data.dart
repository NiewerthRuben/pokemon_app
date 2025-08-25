import 'package:json_annotation/json_annotation.dart';

import 'evolution_chain_link_data.dart';

part 'pokemon_species_data.g.dart';

@JsonSerializable()
class PokemonSpeciesData {
  final int id;
  final String name;

  @JsonKey(name: 'evolution_chain')
  final EvolutionChainLinkData evolutionChain;

  PokemonSpeciesData({
    required this.id,
    required this.name,
    required this.evolutionChain,
  });

  factory PokemonSpeciesData.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpeciesDataToJson(this);
}
