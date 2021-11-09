import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/src/models/app/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj on FirebaseUser
  MyAppUser _userFromFireBaseUser(User? user) {
    return user != null ? MyAppUser(uid: user.uid) : MyAppUser(uid: '000000');
  }

  //auth change user stream
  Stream<MyAppUser> get user {
    return _auth.authStateChanges().map(_userFromFireBaseUser);
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFireBaseUser(user);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

//register with email and password
  Future registerWithEmailAndPassword(
      {
      required String email,
      required String password}) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFireBaseUser(user);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

//sign in with email & password

  Future signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }


}
