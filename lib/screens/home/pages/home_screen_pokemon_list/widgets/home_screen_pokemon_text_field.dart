import 'package:flutter/material.dart';

class HomeScreenPokemonTextField extends StatefulWidget {
  final Function(String) onChanged;

  const HomeScreenPokemonTextField({super.key, required this.onChanged});

  @override
  State<HomeScreenPokemonTextField> createState() =>
      _HomeScreenPokemonTextFieldState();
}

class _HomeScreenPokemonTextFieldState
    extends State<HomeScreenPokemonTextField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hint: Text("Suchen..."),
        label: Text("Suche nach Namen"),
        fillColor: Colors.red,
      ),
      onChanged: (value) => widget.onChanged(value),
    );
  }
}
