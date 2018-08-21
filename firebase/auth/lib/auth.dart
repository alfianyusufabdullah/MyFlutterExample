import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = new GoogleSignIn();

Future<FirebaseUser> hasSignIn() async {
  return await _auth.currentUser();
}

Future<FirebaseUser> signInWithGoogle() async {
  GoogleSignInAccount account = await _googleSignIn.signIn();
  GoogleSignInAuthentication authentication = await account.authentication;

  final FirebaseUser user = await _auth.signInWithGoogle(
    idToken: authentication.idToken,
    accessToken: authentication.accessToken,
  );

  return user;
}

Future<bool> signInAsAnonymous() async {
  FirebaseUser user = await _auth.signInAnonymously();
  return user != null;
}

Future signOut() async {
  _auth.signOut();
}
