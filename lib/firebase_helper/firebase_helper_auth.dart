// ignore_for_file: use_build_context_synchronously

import 'package:e_com2/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthHelper{
 static FirebaseAuthHelper instance = FirebaseAuthHelper();
  final FirebaseAuth _auth =FirebaseAuth.instance;
  Stream<User?> get getAuthChanges =>_auth.authStateChanges();


  Future<bool> login(String email, String password,  BuildContext context)async{
    try{
     showLoaderDialog(context);
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.of(context).pop();
      return true;
    } on FirebaseAuthException catch(error){
      showMessage(error.code.toString());
      return false;
    }
  }
}