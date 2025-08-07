import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/splash/splash_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
