import 'package:adopet/pages_ong/ong_animals_page.dart';
import 'package:adopet/pages_ong/ong_dog_page.dart';
import 'package:adopet/pages_ong/ong_perfil_page.dart';
import 'package:flutter/material.dart';

class MainDogScreen extends StatefulWidget {
  const MainDogScreen({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenDog(),
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
