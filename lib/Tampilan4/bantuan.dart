import 'package:flutter/material.dart';

void main() {
  runApp(Bantuan());
}

class Bantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 97, 130, 100),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 208, 231, 210),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Petunjuk Penggunaan'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 208, 231, 210),
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 97, 130, 100),
                    size: 36.0,
                  ),
                  title: Text(
                    'Pencarian Buku',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 97, 130, 100),
                    ),
                  ),
                  subtitle: Text(
                    'Untuk mencari buku, masukkan kata kunci atau judul buku yang Anda cari di kotak pencarian di beranda aplikasi perpustakaan.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ListTile(
                  leading: Icon(
                    Icons.library_books,
                    color: Color.fromARGB(255, 97, 130, 100),
                    size: 36.0,
                  ),
                  title: Text(
                    'Peminjaman Buku',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 97, 130, 100),
                    ),
                  ),
                  subtitle: Text(
                    'Untuk meminjam buku, pastikan Anda telah masuk ke akun Anda. Klik pada buku yang ingin Anda pinjam, lalu pilih opsi "Pinjam". Anda akan diberikan tanggal jatuh tempo peminjaman.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 97, 130, 100),
                    size: 36.0,
                  ),
                  title: Text(
                    'Mengelola Akun',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 97, 130, 100),
                    ),
                  ),
                  subtitle: Text(
                    'Anda dapat mengelola akun Anda dengan mengakses menu pengaturan di aplikasi perpustakaan.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ListTile(
                  leading: Icon(
                    Icons.bookmark,
                    color: Color.fromARGB(255, 97, 130, 100),
                    size: 36.0,
                  ),
                  title: Text(
                    'Pengembalian Buku',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 97, 130, 100),
                    ),
                  ),
                  subtitle: Text(
                    'Setelah Anda selesai membaca buku, jangan lupa mengembalikannya ke perpustakaan sesuai dengan tanggal jatuh tempo peminjaman.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
