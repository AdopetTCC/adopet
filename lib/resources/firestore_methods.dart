import 'package:adopet/models/post.dart';
import 'package:adopet/resources/storage_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
    String description,
    Uint8List file,
    String uid,
    String name,
    String profImage,
    String size,
    String age,
    String sex,
  ) async {
    String res = "some error ocurred";
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('post', file, true);

      String postId = const Uuid().v1();
      Post post = Post(
        description: description,
        uid: uid,
        name: name,
        postId: postId,
        postUrl: photoUrl,
        profImage: profImage,
        sex: sex,
        size: size,
        age: age,
      );

      _firestore.collection('post').doc(postId).set(
            post.toJson(),
          );
      res = "sucess";
    } catch (err) {
      res == err.toString();
    }
    return res;
  }
}
