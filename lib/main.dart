import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/repository_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = SharedPreferencesAsync();
  runApp(RepositoryContainer(preferences: preferences, child: Application()));
}
