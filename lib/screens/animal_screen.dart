import 'package:flutter/material.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 440,
          child: const Image(
            image: AssetImage('images/sandro.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
