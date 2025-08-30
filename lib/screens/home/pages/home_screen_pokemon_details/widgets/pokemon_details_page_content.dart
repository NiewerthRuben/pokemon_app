import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/extensions/color_contrast_extension.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/widgets/stat_bar_widget/stat_bar_widget.dart';

import '../../../../../enums/pokemon_type_enum.dart';
import '../../../../../navigations/e_routes.dart';
import '../../../../../repository/main_repository.dart';
import '../../../cubit/evolution_cubit.dart';
import '../../../cubit/favorites_cubit.dart';
import '../../../cubit/home_screen_cubit.dart';

class PokemonDetailsPageContent extends StatelessWidget {
  const PokemonDetailsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRepo = context.read<MainRepository>();
    final pokemon = mainRepo.selectedPokemon;
    final pokemonType = pokemon.firstType;
    final backgroundColor = PokemonTypeEnum.fromString(pokemonType).color;
    final favoritesCubit = context.read<FavoritesCubit>();

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.read<HomeScreenCubit>().goToListPage();
      },
      child: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  if (pokemon.imageUrl != null)
                    Image.network(
                      pokemon.imageUrl!,
                      height: 160,
                      fit: BoxFit.contain,
                    )
                  else
                    const Icon(Icons.image_not_supported, size: 96),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (pokemon.name != null)
                            ? pokemon.name!.capitalize()
                            : '',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: backgroundColor.contrastColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      BlocBuilder<FavoritesCubit, FavoritesState>(
                        builder: (context, state) {
                          return IconButton(
                            icon: Icon(
                              pokemon.isFavorite
                                  ? Icons.star
                                  : Icons.star_border,
                              color: pokemon.isFavorite
                                  ? Colors.yellow
                                  : backgroundColor.contrastColor,
                              size: 30,
                            ),
                            onPressed: () {
                              pokemon.isFavorite = !pokemon.isFavorite;
                              favoritesCubit.changePokemonFavoriteList(pokemon);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Typ: ${pokemon.firstType?.capitalize() ?? "—"}',
                    style: TextStyle(
                      fontSize: 16,
                      color: backgroundColor.contrastColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                "Entwicklung",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor.contrastColor,
                ),
              ),
            ),
            const SizedBox(height: 8),

            SizedBox(
              height: 140,
              child: BlocBuilder<EvolutionCubit, EvolutionState>(
                builder: (context, state) {
                  return state.when(
                    initial: () =>
                        const Center(child: CircularProgressIndicator()),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    failure: (message) => Center(
                      child: Text(
                        "Fehler beim Laden: $message",
                        style: TextStyle(color: backgroundColor.contrastColor),
                      ),
                    ),
                    loaded: (stages) {
                      if (stages.isEmpty) {
                        return Center(
                          child: Text(
                            "Keine Entwicklung gefunden",
                            style: TextStyle(
                              color: backgroundColor.contrastColor,
                            ),
                          ),
                        );
                      }

                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        itemCount: stages.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 12),
                        itemBuilder: (context, idx) {
                          final stage = stages[idx];

                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context
                                          .read<MainRepository>()
                                          .selectedPokemon =
                                      stage;

                                  ERoute.DETAILS.push(context);
                                },
                                child: CircleAvatar(
                                  radius: 44,
                                  backgroundColor: Colors.white,
                                  backgroundImage: stage.imageUrl != null
                                      ? NetworkImage(stage.imageUrl!)
                                      : null,
                                  child: stage.imageUrl == null
                                      ? const Icon(Icons.help_outline)
                                      : null,
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: 90,
                                child: Text(
                                  stage.name?.capitalize() ?? '',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: backgroundColor.contrastColor,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 12),

            // Stats Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                "Basiswerte",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor.contrastColor,
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Stats List
            Expanded(
              child: (pokemon.stats != null && pokemon.stats!.isNotEmpty)
                  ? ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      itemCount: pokemon.stats!.length,
                      itemBuilder: (context, index) {
                        final s = pokemon.stats![index];
                        final name = s?.stat.name ?? '';
                        final value = s?.baseStat ?? 0;
                        return StatBarWidget(
                          name: name,
                          value: value,
                          textColor: backgroundColor.contrastColor,
                          barColor: (pokemon.firstType == "water")
                              ? Colors.black
                              : Colors.blue,
                        );
                      },
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
