part of 'splash_screen_cubit.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState.splashScreenInitial() = SplashScreenInitial;
  const factory SplashScreenState.splashScreenInitializing({required double count}) = SplashScreenInitializing;
  const factory SplashScreenState.splashScreenInitialized() = SplashScreenInitialized;
  const factory SplashScreenState.splashScreenFailed({required String errorMsg}) = SplashScreenFailed;
}
