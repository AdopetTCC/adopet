import 'package:adopet/pages_ong/ong_animals_page.dart';
import 'package:adopet/pages_ong/ong_cat_page.dart';
import 'package:adopet/pages_ong/ong_perfil_page.dart';
import 'package:flutter/material.dart';

class MainCatScreen extends StatefulWidget {
  const MainCatScreen({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenCat(),
    Animais(),
    Configuracoes(),
  ];

  @override
  State<MainCatScreen> createState() => _MainCatScreenState();
}

class _MainCatScreenState extends State<MainCatScreen> {
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
        child: MainCatScreen._widgetOptions.elementAt(_selectedIndex),
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
