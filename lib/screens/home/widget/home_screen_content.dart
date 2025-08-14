import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/repository/instances_repository.dart';
import 'package:pokemon_app/repository/main_repository.dart';
import 'package:pokemon_app/screens/home/cubit/favorites_cubit.dart';
import 'package:pokemon_app/screens/home/cubit/home_screen_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/home_screen_pokemon_details_page.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/cubit/pokemon_list_cubit.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_list/home_screen_pokemon_list_page.dart';
import 'package:pokemon_app/screens/home/repositories/pokemon_repository.dart';
import '../../../localization/generated/l10n.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  final _pageController = PageController();
  final _pageTransitionDuration = const Duration(milliseconds: 250);
  final _pageTransitionCurve = Curves.easeInOut;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonRepository = context.read<PokemonRepository>();
    final localize = Localize.of(context);
    final mainRepository = context.read<MainRepository>();
    return BlocListener<HomeScreenCubit, HomeScreenState>(
      listener: (context, state) {
        if (state is HomeScreenInitial) {
          _pageController.animateToPage(
            0,
            duration: _pageTransitionDuration,
            curve: _pageTransitionCurve,
          );
        }
        if (state is HomeScreenGoToDetailsPage) {
          _pageController.animateToPage(
            1,
            duration: _pageTransitionDuration,
            curve: _pageTransitionCurve,
          );
        }
        if (state is HomeScreenGoToListPage) {
          _pageController.animateToPage(
            0,
            duration: _pageTransitionDuration,
            curve: _pageTransitionCurve,
          );
        }
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PokemonListCubit(
              mainRepository: mainRepository,
              pokemonRepository: pokemonRepository,
            )..initialPokemonList(),
          ),
          BlocProvider(
            create: (context) =>
                FavoritesCubit(pokemonRepository: pokemonRepository),
          ),
        ],
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            HomeScreenPokemonListPage(),
            HomeScreenPokemonDetailsPage(),
          ],
        ),
      ),
    );
  }
}
