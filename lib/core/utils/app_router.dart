import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_app/features/Login%20Screen/login_screen.dart';
import 'package:restaurant_app/features/Menu%20Screen/menu_screen.dart';

import '../../features/Splash Screen/splash_screen.dart';

abstract class AppRouter {
  static const rSplashScreen = '/';
  static const rLoginScreen = '/Login';
  static const rMainScreen = '/Main';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: rSplashScreen,
        builder:(context, state) => const SplashScreen()),
      GoRoute(
        path: rLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: rMainScreen,
        builder: (context, state) => const MenuScreen(),
      ),
    ],
  );

  static Future<T?> toMainScreen<T>(BuildContext context) =>
      context.push<T>(rMainScreen);
}
