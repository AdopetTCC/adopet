import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String name;
  final String uid;
  final String photoUrl;
  final String email;
  final String telefone;
  final String senha;

  const User(
      {required this.name,
      required this.uid,
      required this.photoUrl,
      required this.email,
      required this.telefone,
      required this.senha});

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
        name: snapshot['name'],
        uid: snapshot['uid'],
        photoUrl: snapshot['photoUrl'],
        email: snapshot['email'],
        telefone: snapshot['telefone'],
        senha: snapshot['senha']);
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "telefone": telefone,
        "uid": uid,
        "photoUrl": photoUrl,
        "senha": senha,
      };
}
