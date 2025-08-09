import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/data/pokemon_stat_data.dart';

part 'pokemon_item_data.g.dart';

@JsonSerializable()
class PokemonItemData {
  final String? name;
  final String? url;
  final String? imageUrl;
  final String? firstType;
  final bool isFavorite;
  final List<PokemonStatData>? stats;

  PokemonItemData({
    this.name,
    this.url,
    this.imageUrl,
    this.firstType,
    this.isFavorite = false,
    this.stats,
  });

  factory PokemonItemData.fromJson(Map<String, dynamic> json) =>
      _$PokemonItemDataFromJson(json);

  PokemonItemData copyWith({
    String? name,
    String? url,
    String? imageUrl,
    String? firstType,
    bool? isFavorite,
    List<PokemonStatData>? stats,
  }) {
    return PokemonItemData(
      name: name ?? this.name,
      url: url ?? this.url,
      imageUrl: imageUrl ?? this.imageUrl,
      firstType: firstType ?? this.firstType,
      isFavorite: isFavorite ?? this.isFavorite,
      stats: stats,
    );
  }
}
