import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_link_data.g.dart';

@JsonSerializable()
class EvolutionChainLinkData {
  final String url;

  EvolutionChainLinkData({required this.url});

  factory EvolutionChainLinkData.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainLinkDataFromJson(json);

  Map<String, dynamic> toJson() => _$EvolutionChainLinkDataToJson(this);
}
