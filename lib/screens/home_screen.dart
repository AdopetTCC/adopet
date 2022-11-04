import 'package:flutter/material.dart';

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
        items: const [
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
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 91,
          width: MediaQuery.of(context).size.width,
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                          top: 13, bottom: 13, left: 33, right: 33)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF7F7F8)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.tune,
                          color: Color(0xFF03063A),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 26,
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                          top: 13, bottom: 13, left: 19, right: 19)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF7F7F8)),
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
                    onPressed: () => {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                          top: 13, bottom: 13, left: 22, right: 22)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF7F7F8)),
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
          height: 8,
        ),
        Container(
          height: 200,
          color: Colors.red,
        ),
      ],
    );
  }
}

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _Favoritos();
}

class _Favoritos extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color.fromARGB(255, 255, 43, 6));
  }
}

class Animais extends StatefulWidget {
  const Animais({super.key});

  @override
  State<Animais> createState() => _Animais();
}

class _Animais extends State<Animais> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFFE306));
  }
}

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  State<Configuracoes> createState() => _Configuracoes();
}

class _Configuracoes extends State<Configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color.fromARGB(255, 6, 255, 39));
  }
}
