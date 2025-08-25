// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EvolutionChainData _$EvolutionChainDataFromJson(Map<String, dynamic> json) =>
    EvolutionChainData(
      id: (json['id'] as num).toInt(),
      chain: ChainLink.fromJson(json['chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EvolutionChainDataToJson(EvolutionChainData instance) =>
    <String, dynamic>{'id': instance.id, 'chain': instance.chain};
