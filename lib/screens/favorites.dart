import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _Favoritos();
}

class _Favoritos extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: const NetworkImage(
                  'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                ),
                height: 240,
                fit: BoxFit.cover,
              ),
              const Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  'Cats rule the world!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
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
                    padding: const EdgeInsets.all(24),
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
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
              'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                child: const Text('Buy Cat'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Text('Buy Cat Food'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
