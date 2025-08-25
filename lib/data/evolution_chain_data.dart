import 'package:json_annotation/json_annotation.dart';

import 'chain_link.dart';

part 'evolution_chain_data.g.dart';

@JsonSerializable()
class EvolutionChainData {
  final int id;
  final ChainLink chain;

  EvolutionChainData({required this.id, required this.chain});

  factory EvolutionChainData.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainDataFromJson(json);

  Map<String, dynamic> toJson() => _$EvolutionChainDataToJson(this);
}
