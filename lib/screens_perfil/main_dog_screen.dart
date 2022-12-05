import 'package:adopet/pages/animals_page.dart';
import 'package:adopet/pages/home_dog_page.dart';
import 'package:adopet/pages/perfil_page.dart';
import 'package:adopet/pages/favorites_page.dart';
import 'package:flutter/material.dart';

class MainDogScreen extends StatefulWidget {
  const MainDogScreen({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenDog(),
    Favoritos(),
    Animais(),
    Configuracoes(),
  ];

  @override
  State<MainDogScreen> createState() => _MainDogScreenState();
}

class _MainDogScreenState extends State<MainDogScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MainDogScreen._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_rounded),
            label: 'Animais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
