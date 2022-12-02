import 'package:adopet/pages/favorites_page.dart';
import 'package:adopet/screens/animal_screen.dart';
import 'package:adopet/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
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
      home: const MainScreen(),
    );
  }
}
