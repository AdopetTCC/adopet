import 'package:adopet/providers/user_provider.dart';
import 'package:adopet/screens/animal_screen.dart';
import 'package:adopet/screens/login_screen.dart';
import 'package:adopet/screens/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

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

  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatefulWidget {
  final bool showHome;

  const MyApp({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adopet',
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
        home: widget.showHome ? const LoginScreen() : const OnboardScreen(),
      ),
    );
  }
}
