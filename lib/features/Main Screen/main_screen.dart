// lib/home_page.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, ${user?.email ?? 'Guest'}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // this will take you back to LoginPage automatically 
              // if you use AuthGate, or:
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      body: const Center(child: Text('🍽️ Welcome to your Restaurant App!')),
    );
  }
}
