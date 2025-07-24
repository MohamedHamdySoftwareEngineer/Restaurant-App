import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_app/features/Login%20Screen/login_screen.dart';
import 'package:restaurant_app/features/Main%20Screen/main_screen.dart';

abstract class AppRouter {
  static const rLoginScreen = '/';
  static const rMainScreen = '/main';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: rLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: rMainScreen,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );

  static Future<T?> toMainScreen<T>(BuildContext context) =>
      context.push<T>(rMainScreen);
}
