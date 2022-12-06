import 'package:adopet/widgets/card_fav.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _Favoritos();
}

class _Favoritos extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.topCenter,
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
                      'Animais Favoritos',
                      style: TextStyle(
                        color: Color(0xFF373737),
                        fontFamily: 'AoboshiOne',
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      children: const [],
                    ),
                  ],
                ),
              ),
              const CardAnimalFav(
                animalfav: 'images/babidi.jpg',
                imgDonofav: './assets/images/sandro.png',
                localizacaofav: 'Americana',
                nomeAnimalfav: 'Babidi',
              ),
              const CardAnimalFav(
                animalfav: 'images/malhado.jpg',
                imgDonofav: 'images/mulher2.jpg',
                localizacaofav: 'Americana',
                nomeAnimalfav: 'Malhado',
              ),
              const CardAnimalFav(
                animalfav: 'images/januario.jpeg',
                imgDonofav: 'images/cara2.jpg',
                localizacaofav: 'Americana',
                nomeAnimalfav: 'Januário',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
