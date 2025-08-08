import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/repository/mock_repository.dart';
import 'package:pokemon_app/screens/splash/cubit/splash_screen_cubit.dart';
import 'package:pokemon_app/screens/splash/widget/splash_screen_content.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRepository = context.read<MainRepository>();
    final instancesRepository = context.read<InstancesRepository>();
    return BlocProvider(
      create: (context) => SplashScreenCubit(
        mainRepository: mainRepository,
        instancesRepository: instancesRepository,
      ),
      child: Scaffold(body: SplashScreenContent()),
    );
  }
}
