import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/main_screen/main_screen.dart';
import 'package:finance_ui/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_ui/features/verify_otp/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter =
      GoRouter(initialLocation: AppRoutes.onBoardingScreen, routes: [
    GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen()),
    GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const VerifyOtpScreen()),
    GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen()),
  ]);
}
