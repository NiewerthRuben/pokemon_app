import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/home/pages/home_screen_pokemon_details/home_screen_pokemon_details_page.dart';
import 'package:pokemon_app/screens/home/home_screen.dart';

import '../screens/splash/splash_screen.dart';

enum ERoute {
  MAIN('/'),
  SPLASH('/splash_screen'),
  HOME('/home_screen'),
  DETAILS('/home_details');

  final String route;

  const ERoute(this.route);

  Widget get screen {
    return switch (this) {
      ERoute.MAIN => const SplashScreen(),
      ERoute.SPLASH => const SplashScreen(),
      ERoute.HOME => const HomeScreen(),
      ERoute.DETAILS => const HomeScreenPokemonDetailsPage(),
    };
  }

  Future<T?> push<T>(BuildContext context, {Object? arguments}) async {
    return Navigator.of(context).pushNamed(route, arguments: arguments);
  } // ganz normaler neue screen auf dem stack!

  Future<T?> pushReplacement<T, TO>(
    BuildContext context, {
    TO? result,
    Object? arguments,
  }) async {
    return Navigator.of(
      context,
    ).pushReplacementNamed<T, TO>(route, result: result, arguments: arguments);
  } // Er tauscht den aktuellen screen im stack durch den neuen.

  Future<T?> pushAndRemoveUntil<T>(
    BuildContext context, {
    ERoute? removeUntil,
    Object? arguments,
  }) async {
    return Navigator.of(context).pushNamedAndRemoveUntil<T>(route, (route) {
      if (removeUntil == null) return false;
      return ModalRoute.withName(removeUntil.route).call(route);
    }, arguments: arguments);
  } // das gleiche wie popUntil aber: falls der letzte navigierte screen final ist, werden alle weiteren screens davor gelöscht

  Future<void> popUntil(BuildContext context) async {
    return Navigator.of(
      context,
    ).popUntil((route) => ModalRoute.withName(this.route).call(route));
  } // wirft alle screen aus dem stack heraus welche im weg stehen
}
