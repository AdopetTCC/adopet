import 'package:flutter/material.dart';
import 'package:adopet/screens_perfil/register_screen.dart';
import 'package:adopet/screens_perfil/ongregister_screen.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xFF0074FC),
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              ),
          child: const Text(
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
      color: const Color(0xFF0074FC),
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OngRegisterScreen(),
                ),
              ),
          child: const Text(
            "ONG's",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'AoboshiOne',
                fontWeight: FontWeight.bold),
          )),
    );

    final cancelButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xFFF31717),
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            "Voltar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'AoboshiOne',
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
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
              ],
            ),
          ),
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF5CB2FF),
                  Color(0xFF0074FC),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
                minimumSize: const Size(298, 67),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              ),
              child: const Text(
                "Pessoa Comum",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'AoboshiOne',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF5CB2FF),
                  Color(0xFF0074FC),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
                minimumSize: const Size(298, 67),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OngRegisterScreen(),
                ),
              ),
              child: const Text(
                "ONG",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'AoboshiOne',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            child: cancelButton,
          ),
        ],
      ),
    );
  }
}
