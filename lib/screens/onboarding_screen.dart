import 'package:adopet/screens/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF4FACFF), Color(0xFF44A7E4)]),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Image(
                image: AssetImage('images/dog.png'),
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 62),
                      child: const Text(
                        'Bem-vindo ao',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'AoboshiOne',
                          fontSize: 30,
                        ),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Adopet',
                        style: TextStyle(
                          height: 0.9,
                          color: Color.fromARGB(255, 247, 184, 3),
                          fontFamily: 'AoboshiOne',
                          fontSize: 67.57,
                        ),
                        children: [
                          TextSpan(
                            text: '!',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'AoboshiOne',
                              fontSize: 67.57,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, bottom: 40, top: 20),
                      child: Text(
                        'O aplicativo Adopet tem como finalidade promover a adoção de animais domésticos e permitir que seus usuários encontrem um Pet que se adeque as suas condições.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: Padding(
                padding:
                    const EdgeInsets.only(bottom: 128, right: 65, left: 65),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFF7B803),
                      border: const Border(
                        top: BorderSide(
                            width: 1,
                            color: Colors.white,
                            style: BorderStyle.solid), //BorderSide
                        bottom: BorderSide(
                            width: 1,
                            color: Colors.white,
                            style: BorderStyle.solid), //BorderSide
                        left: BorderSide(
                            width: 1,
                            color: Colors.white,
                            style: BorderStyle.solid), //Borderside
                        right: BorderSide(
                            width: 1,
                            color: Colors.white,
                            style: BorderStyle.solid), //BorderSide
                      ),
                    ),
                    child: const Text(
                      'Iniciar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'AoboshiOne',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
