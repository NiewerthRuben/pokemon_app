import 'package:pokemon_app/data/pokemon_detail_data.dart';
import 'package:pokemon_app/data/pokemon_item_data.dart';

class MainRepository {
  List<PokemonItemData> pokemonsWithDetails = [];

  List<String> pokemonCategories = [];

  PokemonItemData selectedPokemon = PokemonItemData();

  void getCategories() {
    pokemonCategories =
        pokemonsWithDetails
            .map((p) => p.firstType?.toLowerCase())
            .whereType<String>()
            .toSet()
            .toList()
          ..sort();

    pokemonCategories.insert(0, "all");
  }

  final Map<String, List<PokemonItemData>> _evolutionCache = {};

  /// Speichere die Evolutionsstufen für [pokemonName] im Session-Cache.
  void cacheEvolution(String pokemonName, List<PokemonItemData> stages) {
    if (pokemonName.isEmpty) return;
    _evolutionCache[pokemonName.toLowerCase()] = List.of(stages);
  }

  /// Liefert die gecachte Evolutionsliste für [pokemonName] oder null, wenn nicht vorhanden.
  List<PokemonItemData>? getCachedEvolution(String pokemonName) {
    if (pokemonName.isEmpty) return null;
    return _evolutionCache[pokemonName.toLowerCase()];
  }

  /// Entfernt den Cache-Eintrag für [pokemonName].
  void removeCachedEvolution(String pokemonName) {
    if (pokemonName.isEmpty) return;
    _evolutionCache.remove(pokemonName.toLowerCase());
  }

  /// Leert den kompletten Evolution-Cache (z. B. beim Logout / Reset).
  void clearEvolutionCache() {
    _evolutionCache.clear();
  }
}
