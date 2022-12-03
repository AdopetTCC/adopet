import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //sing up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
    required String telefone,
    //required Uint8List file,
  }) async {
    String res = "Algum erro ocorreu";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          name.isNotEmpty ||
          telefone.isNotEmpty) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        print(cred.user!.uid);
        //add user to database
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'name': name,
          'uid': cred.user!.uid,
          'email': email,
          'telefone': telefone,
        });
        res = "sucesso";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}