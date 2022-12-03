import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String name;
  final String uid;
  final String photoUrl;
  final String email;
  final String telefone;

  const User({
    required this.name,
    required this.uid,
    required this.photoUrl,
    required this.email,
    required this.telefone,
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "nome": name,
        "telefone": telefone,
        "uid": uid,
        "photoUrl": photoUrl,
        "sex": email,
        "age": telefone,
      };
}
