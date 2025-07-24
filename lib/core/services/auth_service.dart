import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPass({ required String email, required String password}) async {
    final userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  Future<void> signOut() {
    return auth.signOut();
  }
}
