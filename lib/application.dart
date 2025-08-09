import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pokemon_app/screens/splash/splash_screen.dart';

import 'localization/generated/l10n.dart';
import 'navigations/e_routes.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        Localize.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: Localize.delegate.supportedLocales,
      routes: {
        ERoute.MAIN.route: (context) => ERoute.SPLASH.screen,
        ERoute.SPLASH.route: (context) => ERoute.SPLASH.screen,
        ERoute.HOME.route: (context) => ERoute.HOME.screen,
      },
    );
  }
}
