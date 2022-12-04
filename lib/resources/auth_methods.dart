import 'dart:typed_data';

import 'package:adopet/resources/storage_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:adopet/models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(documentSnapshot);
  }

  //sing up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
    required String telefone,
    required Uint8List file,
  }) async {
    String res = "Algum erro ocorreu";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          name.isNotEmpty ||
          telefone.isNotEmpty ||
          file != null) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        //String photoUrl = await StorageMethods()
        //.uploadImageToStorage('profilePics', file, false);

        print(cred.user!.uid);

        String photoUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', file, false);

        //add user to database
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'name': name,
          'uid': cred.user!.uid,
          'email': email,
          'telefone': telefone,
          'photoUrl': photoUrl,
        });
        res = "sucesso";
      }
      //firebase erros in email and password
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-mail') {
        res = 'The email is badly formated.';
      } else if (err.code == 'weak-password') {
        res = 'Password should be at least 6 characters';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  //logging in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Algum erro ocorreu";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "sucesso";
      } else {
        res = "Por favor, preencher todos os campos";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
