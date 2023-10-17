import 'package:flutter/material.dart';
import 'package:projek1/Tampilan2/judul.dart';
import 'package:projek1/Tampilan2/tampilan1.dart';
import 'package:projek1/Tampilan2/tampilan2.dart';

import 'package:projek1/Tampilan1/pencarian.dart';

void main() {
  runApp(Main2());
}

class Main2 extends StatefulWidget {
  const Main2({Key? key});

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 130, 100),
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: ListView(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 97, 130, 100),
                ),
                child: Column(
                  children: [
                    Judul(),
                    Pencarian(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  children: [Tampilan1()],
                ),
              ),
              SizedBox(height: 20),
              Tampilan2(),
            ],
          ),
        ),
      ),
    );
  }
}
