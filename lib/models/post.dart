import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String name;
  final String uid;
  final String sex;
  final String size;
  final String age;
  final String postId;
  final String postUrl;
  final String profImage;
  final String description;

  const Post(
      {required this.name,
      required this.uid,
      required this.sex,
      required this.size,
      required this.age,
      required this.postId,
      required this.postUrl,
      required this.profImage,
      required this.description});

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
        name: snapshot["name"],
        uid: snapshot["uid"],
        sex: snapshot["sex"],
        size: snapshot["size"],
        age: snapshot["age"],
        postId: snapshot["postId"],
        postUrl: snapshot["postUrl"],
        profImage: snapshot["profImage"],
        description: snapshot['description']);
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "uid": uid,
        "sex": sex,
        "size": size,
        "age": age,
        "postId": postId,
        'postUrl': postUrl,
        'profImage': profImage,
        'description': description,
      };
}
