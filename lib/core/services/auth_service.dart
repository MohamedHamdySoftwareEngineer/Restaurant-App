import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  Future<User?> signInWithEmailAndPass({ required String email, required String password}) async {
    final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

}
