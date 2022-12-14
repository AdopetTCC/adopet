import 'package:adopet/screens_perfil/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:adopet/screens_perfil/register_screen.dart';
import 'package:adopet/screens_perfil/ongregister_screen.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerButton = Container(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 180,
                ),
                Text(
                  "Pessoa Comum",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'AoboshiOne',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );

    final ongregisterButton = Container(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Icon(
                  Icons.home_work_rounded,
                  size: 180,
                ),
                Text(
                  "ONG",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'AoboshiOne',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );

    final cancelButton = Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFF4E4E),
            Color(0xFFF31717),
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
            builder: (context) => const LoginScreen(),
          ),
        ),
        child: const Text(
          "Cancelar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'AoboshiOne',
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: appBarDefault(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: registerButton,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: ongregisterButton,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: cancelButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar appBarDefault() {
  return AppBar(
    toolbarHeight: 100,
    elevation: 0,
    backgroundColor: Colors.transparent,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF5CB2FF),
            Color(0xFF0074FC),
          ],
        ),
      ),
      child: Stack(
        children: [
          const Center(
            child: Text(
              'Adopet',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'AoboshiOne',
                fontSize: 67.57,
              ),
            ),
          ),
          Positioned(
            top: -8,
            left: -46,
            child: Image.asset('./assets/icons/pata1.png'),
          ),
          Positioned(
            bottom: 45,
            right: -50,
            child: Image.asset('./assets/icons/pata4.png'),
          ),
        ],
      ),
    ),
  );
}
