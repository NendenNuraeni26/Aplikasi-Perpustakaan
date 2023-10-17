import 'package:flutter/material.dart';
import 'package:projek1/Tampilan2/Model/buku2.dart';

class DetailBuku extends StatelessWidget {
  final buku2 buku;

  DetailBuku({required this.buku});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 130, 100),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 60, 20, 20),
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          color: Color.fromARGB(255, 208, 231, 210),
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Text(
                '${buku.judul}',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Image.network(buku.gambar, height: 300, width: 250),
              SizedBox(height: 10),
              Text('Pengarang: ${buku.pengarang}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Text('Tahun: ${buku.tahun}',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(height: 15),
              Text('Penerbit: ${buku.penerbit}',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
