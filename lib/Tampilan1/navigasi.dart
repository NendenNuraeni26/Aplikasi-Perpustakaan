import 'package:flutter/material.dart';
import 'package:projek1/Tampilan1/main.dart'; // Ganti sesuai dengan path yang benar
import 'package:projek1/Tampilan2/main2.dart'; // Ganti sesuai dengan path yang benar
import 'package:projek1/Tampilan4/profilee.dart'; // Ganti sesuai dengan path yang benar

void main() {
  runApp(Navigasi());
}

class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyApp(),
    Main2(),
    Profilee(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 97, 130, 100),
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 208, 231, 210),
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "Koleksi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
