import 'package:adopet/screens_perfil/main_cat_screen.dart';
import 'package:adopet/screens_perfil/main_dog_screen.dart';
import 'package:adopet/screens_perfil/main_screen.dart';
import 'package:adopet/widgets/card_fav.dart';
import 'package:flutter/material.dart';
import '../widgets/card.dart';

class HomeScreenFav extends StatelessWidget {
  const HomeScreenFav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, right: 5, left: 5, bottom: 20),
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
                          onPressed: () => {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.only(
                                top: 13,
                                bottom: 13,
                                left: 19,
                                right: 19,
                              ),
                            ),
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
                                'Ambos',
                                style: TextStyle(
                                  color: Colors.white,
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
                          onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainDogScreen(),
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.only(
                                    top: 13, bottom: 13, left: 22, right: 22)),
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
                                'Cães',
                                style: TextStyle(
                                  color: Color(0xFF03063A),
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
              const CardAnimalFav(
                animalfav: './assets/images/babidi.jpg',
                imgDonofav: './assets/images/sandro.png',
                localizacaofav: "Santa Bárbara d'Oeste",
                nomeAnimalfav: 'Babidi',
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
                animal: './assets/images/branquinha.jpg',
                imgDono: './assets/images/cara2.jpg',
                localizacao: 'Americana',
                nomeAnimal: 'Branquinha',
              ),
              const CardAnimal(
                animal: './assets/images/luke.png',
                imgDono: './assets/images/cara1.jpg',
                localizacao: 'Nova Odessa',
                nomeAnimal: 'Luke',
              ),
              const CardAnimal(
                animal: './assets/images/januario.jpeg',
                imgDono: './assets/images/cara2.jpg',
                localizacao: 'Americana',
                nomeAnimal: 'Januário',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
