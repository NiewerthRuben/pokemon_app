import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/repository/mock_repository.dart';

class RepositoryContainer extends StatelessWidget {
  final Widget child;

  const RepositoryContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => MockRepository()),
        RepositoryProvider(create: (context) => MainRepository()),
      ],
      child: child,
    );
  }
}
