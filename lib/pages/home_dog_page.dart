import 'package:adopet/pages/home_cat_page.dart';
import 'package:adopet/screens_perfil/main_cat_screen.dart';
import 'package:adopet/screens_perfil/main_dog_screen.dart';
import 'package:adopet/screens_perfil/main_fav_screen.dart';
import 'package:adopet/screens_perfil/main_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/card_fav.dart';

class HomeScreenDog extends StatelessWidget {
  const HomeScreenDog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 50, right: 5, left: 5, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Americana, SP',
                    style: TextStyle(
                      color: Color(0xFF373737),
                      fontFamily: 'AoboshiOne',
                      fontSize: 26,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Localização',
                        style: TextStyle(
                          color: Color(0xFF70717B),
                          fontFamily: 'AoboshiOne',
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Color(0xFF5AA9EF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF64ADEF),
                    Color(0xFF3198F4),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Filtros',
                    style: TextStyle(
                      color: Color(0xFF03063A),
                      fontFamily: 'AoboshiOne',
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainFavScreen(),
                          ),
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.only(
                              top: 13,
                              bottom: 13,
                              left: 19,
                              right: 19,
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        child: Column(
                          children: const [
                            Text(
                              'Ambos',
                              style: TextStyle(
                                color: Color(0xFF03063A),
                                fontFamily: 'AoboshiOne',
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 26,
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainCatScreen(),
                          ),
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.only(
                                  top: 13, bottom: 13, left: 19, right: 19)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFF7F7F8)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        child: Column(
                          children: const [
                            Text(
                              'Gatos',
                              style: TextStyle(
                                color: Color(0xFF03063A),
                                fontFamily: 'AoboshiOne',
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 26,
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.only(
                                  top: 13, bottom: 13, left: 22, right: 22)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0XFFF7B803)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        child: Column(
                          children: const [
                            Text(
                              'Cães',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'AoboshiOne',
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CardAnimal(
              animal: './assets/images/pacoca.jpg',
              imgDono: './assets/images/mulher1.jpg',
              localizacao: 'Americana',
              nomeAnimal: 'Paçoca',
            ),
            const CardAnimal(
              animal: './assets/images/malhado.jpg',
              imgDono: './assets/images/mulher2.jpg',
              localizacao: 'Americana',
              nomeAnimal: 'Malhado',
            ),
            const CardAnimal(
              animal: './assets/images/luke.png',
              imgDono: './assets/images/cara1.jpg',
              localizacao: 'Nova Odessa',
              nomeAnimal: 'Luke',
            ),
          ],
        ),
      ),
    );
  }
}
