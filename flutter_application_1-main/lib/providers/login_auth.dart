import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // User registration with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return null; // Return null for success
    } catch (e) {
      return e.toString(); // Return the error message on failure
    }
  }

  // User login with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null; // Return null for success
    } catch (e) {
      return e.toString(); // Return the error message on failure
    }
  }
}
