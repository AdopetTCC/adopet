// import 'package:cloud_firestore/cloud_firestore.dart';

class DogUser {
  final String username;
  final String location;
  final String photoUrl;
  final List sex;
  final List age;
  final List size;
  final String photoUrlD;
  final String usernameD;
  final String bio;

  const DogUser({
    required this.username,
    required this.location,
    required this.photoUrl,
    required this.sex,
    required this.age,
    required this.size,
    required this.photoUrlD,
    required this.usernameD,
    required this.bio,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "location": location,
        "photoUrl": photoUrl,
        "sex": sex,
        "age": age,
        "size": size,
        "photoUrlD": photoUrlD,
        "usernameD": usernameD,
        "bio": bio,
      };
}
