import 'package:flutter/material.dart';
import 'package:projek1/Tampilan2/Model/buku2.dart';
import 'package:projek1/Tampilan3/tampilan3.dart';

class Koleksi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<buku2> katalogs = [
      buku2(
        gambar:
            "https://cdn.pnghd.pics/data/1059/cover-buku-yang-menarik-14.jpg",
        judul: "Koleksi Novel Tereliye",
        pengarang: "Tereliye",
        tahun: "2020",
        penerbit: "Gramedia",
      ),
      buku2(
        gambar:
            "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/140599714/original/e3636539945242d309468d36fc7ca08f8fd4ee0f/design-book-cover-simple-modern-beautifull.jpg",
        judul: "Aku Sukses",
        pengarang: "Nenden Nuraeni",
        tahun: "2018",
        penerbit: "Kemendikbud",
      ),
      buku2(
        gambar:
            "https://dyp.im/wp-content/uploads/2020/12/Template-Cover-Buku-dari-Fotor.jpg",
        judul: "Kumpulan Motivasi",
        pengarang: "Intan Tiara",
        tahun: "2019",
        penerbit: "Libang",
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Text(
              "Daftar Koleksi Baru",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
          width: 500,
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: katalogs.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailBuku(buku: katalogs[index]),
                    ),
                  );
                },
                child: Card(
                  elevation: 5, // Tambahkan bayangan
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: Gambar(
                    gambarr: katalogs[index].gambar,
                    judul: katalogs[index].judul,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Gambar extends StatelessWidget {
  final String gambarr;
  final String judul;

  const Gambar({
    Key? key,
    required this.gambarr,
    required this.judul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(4, 8, 4, 0),
      color: Colors.white60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            gambarr,
            height: 100,
            width: 150,
          ),
          SizedBox(height: 10),
          Text(
            judul,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
