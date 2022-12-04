import 'package:adopet/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:adopet/models/user.dart' as model;
import 'package:provider/provider.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: const CardGato(),
    );
  }
}

class CardGato extends StatefulWidget {
  const CardGato({
    Key? key,
  }) : super(key: key);

  @override
  State<CardGato> createState() => _CardGatoState();
}

class _CardGatoState extends State<CardGato> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: const Image(
                  image: AssetImage('./assets/images/cat.png'),
                  fit: BoxFit.cover,
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
                              'Gatito',
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
                              children: const [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xFF5AA9EF),
                                ),
                                Text(
                                  'Americana',
                                  style: TextStyle(
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
                            padding: const EdgeInsets.all(8.3),
                          ),
                          onPressed: () {},
                          child: const CircleAvatar(
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
                      Icons.star,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
