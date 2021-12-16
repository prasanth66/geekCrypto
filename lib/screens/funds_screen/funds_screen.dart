import 'package:crypto_geek/screens/widgets/header_drawer.dart';
import 'package:flutter/material.dart';

class FundsScreen extends StatefulWidget {
  const FundsScreen({Key? key}) : super(key: key);

  @override
  _FundsScreenState createState() => _FundsScreenState();
}

class _FundsScreenState extends State<FundsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Funds"),
        centerTitle: true,
      ),
      drawer: HeaderDrawer(),
    );
  }
}
