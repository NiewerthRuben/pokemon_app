import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';
import 'package:pokemon_app/repository/main_repository.dart';

class PokemonCategoryDialog extends StatelessWidget {
  const PokemonCategoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(width: 3, color: Colors.blue.shade700),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                hint: const Center(
                  child: Text(
                    "Types",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                items: _getDropdownMenuItems(context.read<MainRepository>()),
                onChanged: (value) {
                  Navigator.of(context).pop(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> _getDropdownMenuItems(
    MainRepository mainRepository,
  ) {
    return mainRepository.pokemonCategories
        .map((item) => DropdownMenuItem<String>(value: item, child: Text(item)))
        .toList();
  }
}
