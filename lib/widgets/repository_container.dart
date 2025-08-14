import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/repository/mock_repository.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/cubit/pokemon_list_cubit.dart';

class RepositoryContainer extends StatelessWidget {
  final Widget child;

  const RepositoryContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => InstancesRepository()),
        RepositoryProvider(create: (context) => MainRepository()),
      ],
      child: child,
    );
  }
}
