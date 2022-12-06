// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:adopet/pages/perfil_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({super.key});

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: const Image(
                image: AssetImage('images/babidi.jpg'),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 62, right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF03063A),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Stack(
          children: [
            Positioned(
              top: 350,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 580,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(41),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, right: 27, left: 27),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(
                              'Babidi',
                              style: TextStyle(
                                color: Color(0xFF373737),
                                fontFamily: 'AoboshiOne',
                                fontSize: 26,
                                decoration: TextDecoration.none,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 20,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.all(16),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Color(0xFF5AA9EF),
                          ),
                          Text(
                            "Santa Bárbara d'Oeste",
                            style: TextStyle(
                              color: Color(0xFF70717B),
                              fontFamily: 'AoboshiOne',
                              fontSize: 15,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFFCAEDA1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                height: 87,
                                width: 105,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Sexo',
                                        style: TextStyle(
                                          color: Color(0xFF70717B),
                                          fontFamily: 'AoboshiOne',
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Macho',
                                        style: TextStyle(
                                          color: Color(0xFF373737),
                                          fontFamily: 'AoboshiOne',
                                          fontSize: 18,
                                          decoration: TextDecoration.none,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFD68F),
                              borderRadius: BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                            ),
                            height: 87,
                            width: 105,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Column(
                                children: const [
                                  Text(
                                    'Idade',
                                    style: TextStyle(
                                      color: Color(0xFF70717B),
                                      fontFamily: 'AoboshiOne',
                                      fontSize: 15,
                                      decoration: TextDecoration.none,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '1 Ano',
                                    style: TextStyle(
                                      color: Color(0xFF373737),
                                      fontFamily: 'AoboshiOne',
                                      fontSize: 18,
                                      decoration: TextDecoration.none,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFA3E1FF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                            ),
                            height: 87,
                            width: 105,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Column(
                                children: const [
                                  Text(
                                    'Porte',
                                    style: TextStyle(
                                      color: Color(0xFF70717B),
                                      fontFamily: 'AoboshiOne',
                                      fontSize: 15,
                                      decoration: TextDecoration.none,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Pequeno',
                                    style: TextStyle(
                                      color: Color(0xFF373737),
                                      fontFamily: 'AoboshiOne',
                                      fontSize: 18,
                                      decoration: TextDecoration.none,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.all(8.3),
                            ),
                            onPressed: () {},
                            child: const CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                './assets/images/sandro.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          RichText(
                            text: const TextSpan(
                              text: 'Sandro\n',
                              style: TextStyle(
                                color: Color(0xFF03063A),
                                fontFamily: 'AoboshiOne',
                                fontSize: 18,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Dono do pet',
                                  style: TextStyle(
                                    color: Color(0xFF70717B),
                                    fontFamily: 'AoboshiOne',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 9,
                        ),
                        child: Column(
                          children: [
                            RichText(
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text:
                                    'Babidi é um cachorro muito arteiro mas que tem um grande coração, ama brincar com crianças e adora uma atenção...',
                                style: const TextStyle(
                                  color: Color(0xFF70717B),
                                  fontFamily: 'AoboshiOne',
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                                children: [
                                  TextSpan(
                                      text: '  Ver Mais',
                                      style: const TextStyle(
                                        color: Color(0xFFFDD153),
                                        fontFamily: 'AoboshiOne',
                                        fontSize: 16,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 139, vertical: 18),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFF64ADEF),
                                    Color(0xFF3198F4),
                                  ])),
                          child: const Text(
                            'Contatar',
                            style: TextStyle(
                              fontFamily: 'AoboshiOne',
                              color: Colors.white,
                              fontSize: 20,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Configuracoes(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
