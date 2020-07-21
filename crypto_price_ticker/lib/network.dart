import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  static const url = "https://rest.coinapi.io/v1/exchangerate/BTC/";
  static Future getPrices(String currency) async {
    http.Response response = await http.get(url + currency);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
