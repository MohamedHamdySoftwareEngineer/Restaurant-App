import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/core/utils/app_router.dart';
import 'package:restaurant_app/core/utils/constants.dart';

void main() async {
  // Ensure that plugin services are initialized before using them
  WidgetsFlutterBinding.ensureInitialized(); // Intialize Firebase
  await Firebase.initializeApp(); // Intialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
    );
  }
}
