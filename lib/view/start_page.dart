import 'package:flutter/material.dart';
import 'package:superheroes_application/view/fav_page.dart';
import 'package:superheroes_application/view/home_page.dart';
import 'package:superheroes_application/view/search_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StatefulWidget> createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    HomePage();,
    SearchPage(),
    FavPage(),
  ];

  final List<Widget> _pages = <Widget>[
    Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
                Text("Settings"),
                Icon(Icons.settings),
            ],
        ),
    ),
    Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
                Text("Home"),
                Icon(Icons.home),
            ],
        ),
    ),
Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
                Text("Messages"),
                Icon(Icons.message),
            ],
        ),
    ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Superhero Application"),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
