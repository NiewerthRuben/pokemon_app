import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/cubit/evolution_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/widgets/pokemon_details_page_content.dart';

class HomeScreenPokemonDetailsPage extends StatelessWidget {
  const HomeScreenPokemonDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRepo = context.read<MainRepository>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => EvolutionCubit(
            instancesRepository: ctx.read<InstancesRepository>(),
            mainRepository: mainRepo,
          ),
        ),
        BlocProvider(create: (context) => PokemonDetailsCubit()..initial()),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
            builder: (context, state) {
              if (state is PokemonDetailInitialized) {
                context.read<EvolutionCubit>().loadEvolution();
                return PokemonDetailsPageContent();
              } else {
                return SizedBox.shrink();
              }
            },
          );
        },
      ),
    );
  }
}
