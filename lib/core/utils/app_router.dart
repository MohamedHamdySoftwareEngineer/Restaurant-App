import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_app/features/Login/login_screen.dart';
import 'package:restaurant_app/features/Menu/menu_screen.dart';

import '../../features/Cart/cart_screen.dart';
import '../../features/Splash/splash_screen.dart';
import '../models/food_item.dart';

abstract class AppRouter {
  static const rSplashScreen = '/';
  static const rLoginScreen = '/Login';
  static const rMainScreen = '/Main';
  static const rCartScreen = '/Cart';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: rSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: rLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: rMainScreen,
        builder: (context, state) => const MenuScreen(),
      ),
      GoRoute(
        path: rCartScreen,
        builder: (context, state) {
          final cart = state.extra as List<FoodItem>? ?? [];
          return CartScreen(initialCart: cart);
        },
      ),
    ],
  );

  static Future<T?> toMainScreen<T>(BuildContext context) =>
      context.push<T>(rMainScreen);
  static Future<T?> toLoginScreen<T>(BuildContext context) =>
      context.push<T>(rLoginScreen);
  static Future<T?> toCartScreen<T>(
    BuildContext context,
    List<FoodItem> cart,
  ) => context.push<T>(rCartScreen, extra: cart);
}
