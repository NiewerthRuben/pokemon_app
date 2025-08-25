import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_link.g.dart';

@JsonSerializable()
class EvolutionChainLink {
  final String url;

  EvolutionChainLink({required this.url});

  factory EvolutionChainLink.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainLinkFromJson(json);

  Map<String, dynamic> toJson() => _$EvolutionChainLinkToJson(this);
}
