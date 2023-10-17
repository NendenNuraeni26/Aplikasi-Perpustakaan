import 'package:flutter/material.dart';
import 'package:projek1/Tampilan2/Model/buku2.dart';
import 'package:projek1/Tampilan3/tampilan3.dart';

class Tampilan1 extends StatelessWidget {
  const Tampilan1({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<buku2> katalogs = [
      buku2(
          gambar:
              "https://cdn.pnghd.pics/data/1059/cover-buku-yang-menarik-14.jpg",
          judul: "Novel Romace",
          pengarang: "Nada Raya",
          tahun: "2021",
          penerbit: "Gramedia"),
      buku2(
          gambar:
              "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/25/a14d94f0-e3bf-40a2-9d9c-a76560c22ed8.jpg",
          judul: "Kereta Api",
          pengarang: "Umam Ubaidillah",
          tahun: "2021",
          penerbit: "Kemendikbud"),
      buku2(
          gambar: "https://buatmedia.com/wp-content/uploads/2023/02/mata.png",
          judul: "Aku Sayang Mataku",
          pengarang: "Nur Cholimah",
          tahun: "2020",
          penerbit: "Buku Anak"),
      buku2(
          gambar:
              "https://i.pinimg.com/550x/e0/32/a8/e032a82aac8e90d8313cd749a8abca29.jpg",
          judul: "Tematik Keluargaku",
          pengarang: "Yuli Rusmayanti",
          tahun: "2021",
          penerbit: "Kemendikbut"),
      buku2(
          gambar:
              "https://penerbitdeepublish.com/wp-content/uploads/2020/11/Menanti-Restu-Langit_Makhasin_Rev-1.0-depan-717x1024.jpg",
          judul: "Menanti Restu Langit",
          pengarang: "Shihab Syahril Haj",
          tahun: "2021",
          penerbit: "Litbang"),
    ];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Katalog Buku",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: katalogs.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailBuku(buku: katalogs[index]),
                    ),
                  );
                },
                child: KatalogItem(
                    foto: katalogs[index].gambar, title: katalogs[index].judul),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KatalogItem extends StatelessWidget {
  final String foto;
  final String title;

  const KatalogItem({
    Key? key,
    required this.foto,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 160,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 97, 130, 100),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.network(
              foto,
              height: 140,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
