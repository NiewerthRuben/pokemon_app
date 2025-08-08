import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/screens/splash/cubit/splash_screen_cubit.dart';

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    super.initState();
    context.read<SplashScreenCubit>().initializePokemon();
  }

  @override
  Widget build(BuildContext context) {
    double? progress = 0.3;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/images/splash.gif',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Lade Pokémon-Daten...',
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
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
