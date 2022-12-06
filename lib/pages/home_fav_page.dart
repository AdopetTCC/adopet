import 'package:adopet/screens_perfil/main_cat_screen.dart';
import 'package:adopet/screens_perfil/main_dog_screen.dart';
import 'package:adopet/screens_perfil/main_screen.dart';
import 'package:adopet/widgets/card_fav.dart';
import 'package:flutter/material.dart';
import '../screens_perfil/animal_screen.dart';
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 270,
                              child: Image(
                                image: AssetImage('./assets/images/babidi.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AnimalScreen(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 218,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Color(0XFFF7B803),
                              ),
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Babidi',
                                          style: const TextStyle(
                                            fontFamily: 'AoboshiOne',
                                            color: Colors.white,
                                            fontSize: 30,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        const SizedBox(
                                          height: 1,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_pin,
                                              color: Color(0xFF5AA9EF),
                                            ),
                                            Text(
                                              'Americana',
                                              style: const TextStyle(
                                                color: Color(0xFF0074FC),
                                                fontFamily: 'AoboshiOne',
                                                fontSize: 18,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white,
                                        padding: const EdgeInsets.all(2),
                                      ),
                                      onPressed: () {},
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                          './assets/images/sandro.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
