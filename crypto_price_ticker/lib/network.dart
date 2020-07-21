import 'dart:convert';

import 'package:cryptopriceticker/models/crypto.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Network {
  static const url = "https://rest.coinapi.io/v1/exchangerate/";

  static Future<List<Crypto>> getPrices(String currency) async {
    List<Crypto> cryptos = [];

    var header = {'X-CoinAPI-Key': '${DotEnv().env['API_KEY']}'};

    http.Response btc =
        await http.get(url + 'BTC/' + currency, headers: header);
    if (btc.statusCode == 200) {
      var res = jsonDecode(btc.body);
      cryptos.add(Crypto(name: 'BTC', price: res['rate']));
    } else {
      cryptos.add(Crypto(name: 'BTC', price: 0.00));
    }

    http.Response eth =
        await http.get(url + 'ETH/' + currency, headers: header);
    if (eth.statusCode == 200) {
      var res = jsonDecode(btc.body);
      cryptos.add(Crypto(name: 'ETH', price: res['rate']));
    } else {
      cryptos.add(Crypto(name: 'ETH', price: 0.00));
    }

    http.Response ltc =
        await http.get(url + 'LTC/' + currency, headers: header);
    if (ltc.statusCode == 200) {
      var res = jsonDecode(btc.body);
      cryptos.add(Crypto(name: 'LTC', price: res['rate']));
    } else {
      cryptos.add(Crypto(name: 'LTC', price: 0.00));
    }

    return cryptos;
  }
}
