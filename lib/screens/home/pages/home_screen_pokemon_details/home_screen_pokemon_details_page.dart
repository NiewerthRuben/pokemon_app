import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/cubit/evolution_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/widgets/pokemon_details_page_content.dart';

class HomeScreenPokemonDetailsPage extends StatelessWidget {
  const HomeScreenPokemonDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRepo = context.read<MainRepository>();
    final selected = mainRepo.selectedPokemon;
    final pokemonName = selected.name ?? '';

    return BlocProvider(
      create: (ctx) => EvolutionCubit(
        instancesRepository: ctx.read<InstancesRepository>(),
        mainRepository: ctx.read<MainRepository>(),
        pokemonName: pokemonName,
      ),
      child: PokemonDetailsPageContent(),
    );
  }
}
