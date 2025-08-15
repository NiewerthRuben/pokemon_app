import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/repository/mock_repository.dart';
import 'package:pokemon_app/repository/preferences_repository.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/cubit/pokemon_list_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RepositoryContainer extends StatelessWidget {
  final Widget child;
  final SharedPreferencesAsync preferences;

  const RepositoryContainer({
    super.key,
    required this.child,
    required this.preferences,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => InstancesRepository()),
        RepositoryProvider(create: (context) => MainRepository()),
        RepositoryProvider(
          create: (context) => PreferencesRepository(preferences: preferences),
        ),
      ],
      child: child,
    );
  }
}
