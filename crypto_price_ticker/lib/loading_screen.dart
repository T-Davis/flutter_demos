import 'package:cryptopriceticker/network.dart';
import 'package:cryptopriceticker/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getCryptoPrices();
  }

  void getCryptoPrices() async {
    var prices = await Network.getPrices('USD');
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PriceScreen(
                  cryptoPrices: prices,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.lightBlue,
          size: 100.0,
        ),
      ),
    );
  }
}
