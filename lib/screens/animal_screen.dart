import 'package:flutter/material.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 440,
              child: const Image(
                image: AssetImage('images/cat.png'),
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
                      onPressed: () {},
                    ),
                  ),
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
                        Icons.more_horiz_rounded,
                        color: Color(0xFF03063A),
                      ),
                      onPressed: () {},
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
                  padding: const EdgeInsets.only(top: 40, right: 28, left: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lilico',
                            style: TextStyle(
                              color: Color(0xFF373737),
                              fontFamily: 'AoboshiOne',
                              fontSize: 26,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.start,
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
                                  Icons.star_border,
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
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Cidade Jardim, Americana (5km)',
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
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    'idade',
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
                      )
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
