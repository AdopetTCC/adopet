import 'package:adopet/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'E-mail',
                  style: TextStyle(
                    color: Color(0xFF373737),
                    fontFamily: 'AoboshiOne',
                    fontSize: 16.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 08,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 238, 237),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 58,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Senha',
                  style: TextStyle(
                    color: Color(0xFF373737),
                    fontFamily: 'AoboshiOne',
                    fontSize: 16.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 08,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 238, 237),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 58,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 47,
          ),
          GestureDetector(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF5CB2FF),
                    Color(0xFF0074FC),
                  ],
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontFamily: 'AoboshiOne',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          GestureDetector(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFF4E4E),
                        Color(0xFFF31717),
                      ])),
              child: const Text(
                'Cancelar',
                style: TextStyle(
                  fontFamily: 'AoboshiOne',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 47,
          ),
          const Text(
            "Não tem uma conta ainda?",
            style: TextStyle(
              fontFamily: 'AoboshiOne',
              color: Color(0xFF373737),
              fontSize: 22.21,
            ),
          ),
          const SizedBox(
            height: 05,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ),
            ),
            child: const Text(
              'Crie uma aqui',
              style: TextStyle(
                fontFamily: 'AoboshiOne',
                color: Color(0xFF0074FC),
                fontSize: 22.21,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
