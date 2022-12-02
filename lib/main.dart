import 'package:firebase_core/firebase_core.dart';
import 'package:adopet/screens/animal_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBkGSZsHtd9EZQ66JehycZHvKF_qDwLw4Q",
            appId: "1:745818239565:web:c5e5d5eace3dc44a5de204",
            messagingSenderId: "745818239565",
            storageBucket: "adopet-5c675.appspot.com",
            projectId: "adopet-5c675"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'AoboshiOne',
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'AoboshiOne',
            fontSize: 17,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const AnimalScreen(),
    );
  }
}
