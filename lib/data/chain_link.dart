import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/species.dart';

part 'chain_link.g.dart';

@JsonSerializable()
class ChainLink {
  @JsonKey(name: 'is_baby')
  final bool isBaby;

  final Species species;

  @JsonKey(name: 'evolves_to')
  final List<ChainLink> evolvesTo;

  ChainLink({
    required this.isBaby,
    required this.species,
    required this.evolvesTo,
  });

  factory ChainLink.fromJson(Map<String, dynamic> json) =>
      _$ChainLinkFromJson(json);

  Map<String, dynamic> toJson() => _$ChainLinkToJson(this);
}
