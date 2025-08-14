import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/repository/main_repository.dart';

class PokemonCategoryDialog extends StatelessWidget {
  const PokemonCategoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          /*Container(
            height: 20,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(width: 3, color: Colors.blue.shade700),
              borderRadius: BorderRadiusGeometry.directional(
                topStart: Radius.circular(24),
                topEnd: Radius.circular(24),
              ),
            ),
          ),*/
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(width: 3, color: Colors.blue.shade700),
              borderRadius: BorderRadiusGeometry.directional(
                topStart: Radius.circular(24),
                topEnd: Radius.circular(24),
              ),
            ),
            width: double.infinity,
            child: DropdownMenu(
              menuStyle: MenuStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color>((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.blue.withOpacity(0.1);
                  }
                  return Colors.white;
                }),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                elevation: WidgetStateProperty.all<double>(8),
              ),

              width: double.infinity,
              inputDecorationTheme: InputDecorationTheme(),
              hintText: "Types ",
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              onSelected: (value) {
                Navigator.of(context).pop(value);
              },
              dropdownMenuEntries: _getDropdownMenuItem(
                context.read<MainRepository>(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<DropdownMenuEntry> _getDropdownMenuItem(MainRepository mainRepository) {
    List<DropdownMenuEntry> menuItems = [];
    for (String item in mainRepository.pokemonCategories) {
      menuItems.add(DropdownMenuEntry(label: item, value: item));
    }
    return menuItems;
  }
}
