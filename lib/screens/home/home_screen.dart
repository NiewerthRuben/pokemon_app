import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/localization/generated/l10n.dart';
import 'package:pokemon_app/screens/home/cubit/home_screen_cubit.dart';
import 'package:pokemon_app/screens/home/widget/home_screen_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = Localize.of(context);
    return BlocProvider(
      create: (context) => HomeScreenCubit(),
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          return PopScope(
            canPop: false,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/logo.png', height: 50),
                    ],
                  ),
                ),
                body: HomeScreenContent(),
              ),
            ),
          );
        },
      ),
    ); // zurück klappt nicht mehr mit canPop = false

    // canPop = false verhindert das zurück gehen (nochmal anschauen)
  }
}
