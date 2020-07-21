import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Network {
  static const url = "https://rest.coinapi.io/v1/exchangerate/BTC/";
  static Future getPrices(String currency) async {
    var header = {'X-CoinAPI-Key': '${DotEnv().env['API_KEY']}'};
    http.Response response = await http.get(url + currency, headers: header);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
