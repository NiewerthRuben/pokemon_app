import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/navigations/e_routes.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/repository/mock_repository.dart';
import 'package:pokemon_app/repository/preferences_repository.dart';
import 'package:pokemon_app/screens/home/home_screen.dart';
import 'package:pokemon_app/screens/splash/cubit/splash_screen_cubit.dart';
import 'package:pokemon_app/screens/splash/widget/splash_screen_content.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRepository = context.read<MainRepository>();
    final instancesRepository = context.read<InstancesRepository>();
    final preferencesRepository = context.read<PreferencesRepository>();
    return BlocProvider(
      create: (context) => SplashScreenCubit(
        mainRepository: mainRepository,
        instancesRepository: instancesRepository,
        preferencesRepository: preferencesRepository,
      )..initializePokemon(),
      child: Builder(
        builder: (context) {
          return BlocListener<SplashScreenCubit, SplashScreenState>(
            listener: (context, state) {
              if (state is SplashScreenInitialized) {
                ERoute.HOME.pushReplacement(context);
              }
            },
            child: Scaffold(body: SplashScreenContent()),
          );
        },
      ),
    );
  }
}
