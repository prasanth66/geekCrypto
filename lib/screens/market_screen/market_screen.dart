import 'package:crypto_geek/screens/market_screen/status_chart.dart';
import 'package:flutter/material.dart';

import 'balence.dart';
import 'crypto_list.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Market"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.face),
        ],
      ),
      body: Column(
        children: [
          Balence(),
          StatusChart(),
          Expanded(child: CryptoList()),
        ],
      ),
    );
  }
}
