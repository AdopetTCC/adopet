import 'package:adopet/screens_perfil/animal_screen.dart';
import 'package:flutter/material.dart';

class CardAnimal extends StatelessWidget {
  final String animal;
  final String nomeAnimal;
  final String localizacao;
  final String imgDono;

  const CardAnimal({
    Key? key,
    required this.animal,
    required this.nomeAnimal,
    required this.localizacao,
    required this.imgDono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      image: AssetImage(animal),
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
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0XFFF7B803),
                    ),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nomeAnimal,
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
                                    localizacao,
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
                                imgDono,
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
                        Icons.favorite_rounded,
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
    );
  }
}
