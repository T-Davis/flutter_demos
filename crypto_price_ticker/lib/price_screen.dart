import 'dart:io' show Platform;

import 'package:cryptopriceticker/network.dart';
import 'package:cryptopriceticker/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  final cryptoPrices;

  PriceScreen({this.cryptoPrices});

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  double btc;
  double eth;
  double ltc;

  @override
  void initState() {
    super.initState();
    updateCryptoPrices(widget.cryptoPrices);
  }

  updateCryptoPrices(var cryptoPrices) {
    setState(() {
      if (cryptoPrices == null) {
        btc = 0;
        eth = 0;
        ltc = 0;
        return;
      }
      btc = (cryptoPrices['BTC'] * 100).round() / 100;
      eth = (cryptoPrices['ETH'] * 100).round() / 100;
      ltc = (cryptoPrices['LTC'] * 100).round() / 100;
    });
  }

  Widget currencyPicker() {
    if (Platform.isIOS) {
      return CupertinoPicker(
        backgroundColor: Colors.lightBlue,
        itemExtent: 32,
        onSelectedItemChanged: (index) async {
          updateCryptoPrices(await Network.getPrices(currencies[index]));
        },
        children: currencies.map((value) => Text(value)).toList(),
      );
    } else {
      return DropdownButton<String>(
        value: selectedCurrency,
        items: currencies
            .map(
              (value) => DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
            .toList(),
        onChanged: (value) async {
          updateCryptoPrices(await Network.getPrices(value));
        },
      );
    }
  }

  Future<Map<String, double>> getPrices(String currency) async {
    return await Network.getPrices(currency);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Crypto Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 9),
                child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 BTC = $btc $selectedCurrency',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 9),
                child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 ETH = $eth $selectedCurrency',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 9),
                child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 LTC = $ltc $selectedCurrency',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: currencyPicker(),
          ),
        ],
      ),
    );
  }
}
