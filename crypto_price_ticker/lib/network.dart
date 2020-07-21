import 'dart:collection';
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Network {
  static const url = "https://rest.coinapi.io/v1/exchangerate/";

  static Future<Map<String, double>> getPrices(String currency) async {
    Map cryptos = HashMap<String, double>();

    var header = {'X-CoinAPI-Key': '${DotEnv().env['API_KEY']}'};

    http.Response btc =
        await http.get(url + 'BTC/' + currency, headers: header);
    if (btc.statusCode == 200) {
      var res = jsonDecode(btc.body);
      cryptos['BTC'] = res['rate'];
    } else {
      cryptos['BTC'] = 0.00;
      print(btc.statusCode);
    }

    http.Response eth =
        await http.get(url + 'ETH/' + currency, headers: header);
    if (eth.statusCode == 200) {
      var res = jsonDecode(eth.body);
      cryptos['ETH'] = res['rate'];
    } else {
      cryptos['ETH'] = 0.00;
      print(eth.statusCode);
    }

    http.Response ltc =
        await http.get(url + 'LTC/' + currency, headers: header);
    if (ltc.statusCode == 200) {
      var res = jsonDecode(ltc.body);
      cryptos['LTC'] = res['rate'];
    } else {
      cryptos['LTC'] = 0.00;
      print(ltc.statusCode);
    }

    return cryptos;
  }
}
