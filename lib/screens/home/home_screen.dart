import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/home/widget/home_screen_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: HomeScreenContent(),
    ); // zurück klappt nicht mehr canPop = false

    // canPop = false verhindert das zurück gehen (nochmal anschauen)
  }
}
