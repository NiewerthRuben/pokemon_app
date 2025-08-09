import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/screens/splash/cubit/splash_screen_cubit.dart';

import '../../../localization/generated/l10n.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = Localize.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/images/splash.gif',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            localize.splashScreenLoadingPokemonsText,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: BlocBuilder<SplashScreenCubit, SplashScreenState>(
              builder: (context, state) {
                if (state is SplashScreenInitializing) {
                  return Column(
                    children: [
                      LinearProgressIndicator(
                        value: state.count,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(12),
                        backgroundColor: Colors.grey.shade300,
                        color: Colors.redAccent,
                      ),
                      SizedBox(height: 30),
                      Text(
                        '${(state.count * 100).toInt()}%',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
