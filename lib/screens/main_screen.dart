import 'package:adopet/pages/animals_page.dart';
import 'package:adopet/pages/config_page.dart';
import 'package:adopet/pages/favorites_page.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Favoritos(),
    Animais(),
    Configuracoes(),
  ];

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          toolbarHeight: 140,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: const Color(0xFF03063A),
              iconSize: 30,
              onPressed: () {},
              padding: const EdgeInsets.only(
                right: 102,
                top: 45,
              ),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(
              left: 21,
              top: 63,
            ),
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Center(
          child: MainScreen._widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_rounded),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_rounded),
            label: 'Animais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
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
