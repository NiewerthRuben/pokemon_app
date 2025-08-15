import 'package:shared_preferences/shared_preferences.dart';

class PreferencesRepository {
  final SharedPreferencesAsync preferences;
  static const String pokemonKey = "pokemonKey";

  PreferencesRepository({required this.preferences});

  Future<void> savePokemonList(String pokemonList) async {
    await preferences.setString(pokemonKey, pokemonList);
  }

  Future<String?> loadPokemonList() async {
    return await preferences.getString(pokemonKey);
  }
}
