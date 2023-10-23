import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class api {
  List data_api = [];

  //fungsi untuk mengambil/fetch data

  Future<void> getapiData() async {
    var response = await http
        .get(Uri.parse("https://wolnelektury.pl/api/books/?format=json"));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      data_api = data;
    } else {
      print("Has no data API");
    }
  }
}
