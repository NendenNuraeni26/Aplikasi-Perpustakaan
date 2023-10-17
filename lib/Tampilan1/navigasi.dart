import 'package:flutter/material.dart';
import 'package:projek1/Tampilan1/main.dart';
import 'package:projek1/Tampilan2/main2.dart';
import 'package:projek1/Tampilan4/profilee.dart';

void main() {
  runApp(navigasi());
}

class navigasi extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<navigasi> {
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
          backgroundColor:
              Color.fromARGB(255, 97, 130, 100), // Warna latar belakang
          currentIndex: _currentIndex,
          selectedItemColor:
              Colors.white, // Warna ikon dan teks label yang aktif
          unselectedItemColor: Color.fromARGB(
              255, 208, 231, 210), // Warna ikon dan teks label yang tidak aktif
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
