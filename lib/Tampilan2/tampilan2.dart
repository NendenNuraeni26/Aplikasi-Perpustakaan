import 'package:flutter/material.dart';
import 'package:projek1/Tampilan2/Model/buku2.dart';
import 'package:projek1/Tampilan3/tampilan3.dart'; // Impor tampilan3.dart untuk DetailBuku

class Tampilan2 extends StatelessWidget {
  const Tampilan2({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<buku2> katalogs2 = [
      buku2(
          gambar:
              "https://id-live-02.slatic.net/p/2cd3e17a83f91f7fc3691989185547aa.jpg",
          judul: "Teluk Alaska",
          pengarang: "Eka Aryani",
          tahun: "2021",
          penerbit: "Litbang"),
      buku2(
          gambar: "https://www.bukukita.com/babacms/displaybuku/103816_f.jpg",
          judul: "Aktif Cerdas Dan Kreatif",
          pengarang: "Utami Pratiwi",
          tahun: "2021",
          penerbit: "Kemenag"),
      buku2(
          gambar:
              "https://s3-ap-southeast-1.amazonaws.com/ebook-previews/31752/100792/1.jpg",
          judul: "Perahu Kertas",
          pengarang: "Dee Lestari",
          tahun: "2021",
          penerbit: "Publising Book"),
      buku2(
          gambar:
              "https://i.pinimg.com/originals/80/17/dd/8017ddf17e5fcba65eb7ed9fddb43d4a.jpg",
          judul: "Pulang",
          pengarang: "Tereliye",
          tahun: "2021",
          penerbit: "Buku Wisata"),
      buku2(
          gambar: "https://www.bukukita.com/babacms/displaybuku/109963_f.jpg",
          judul: "Mariposa",
          pengarang: "Lulu HF",
          tahun: "2021",
          penerbit: "Gramedia"),
    ];

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 196, 231, 198),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Buku Populer",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 630,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: katalogs2.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailBuku(buku: katalogs2[index]),
                    ),
                  );
                },
                child: BukuCard(
                  gambar: katalogs2[index].gambar,
                  judul: katalogs2[index].judul,
                  pengarang: katalogs2[index].pengarang,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BukuCard extends StatelessWidget {
  final String gambar;
  final String judul;
  final String pengarang;

  const BukuCard({
    Key? key,
    required this.gambar,
    required this.judul,
    required this.pengarang,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 121, 172, 120),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                gambar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  judul,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Pengarang: $pengarang", // Menambahkan label "Pengarang"
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black, // Ganti warna teks pengarang
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
