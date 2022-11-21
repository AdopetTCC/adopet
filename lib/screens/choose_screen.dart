import 'package:flutter/material.dart';
import 'package:adopet/screens/register_screen.dart';
//import 'package:adopet/screens/ongregister_screen.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFF0074FC),
      child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 125, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
          },
          child: Text(
            "Pessoa Física",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'AoboshiOne',
                fontWeight: FontWeight.bold),
          )),
    );

    final ongregisterButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFF0074FC),
      child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 125, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            /*() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OngRegisterScreen(),
                  ),
                );*/
          },
          child: Text(
            "ONG's",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'AoboshiOne',
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF5CB2FF),
                      Color(0xFF0074FC),
                    ])),
            height: 199,
            child: const Center(
              child: Text(
                'Adopet',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'AoboshiOne',
                  fontSize: 67.57,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    registerButton,
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ongregisterButton,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
