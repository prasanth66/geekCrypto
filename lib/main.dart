import 'package:crypto_geek/screens/entryScreen/entryScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cryptoGeek',
      theme: ThemeData.dark(),

      home:  EntryScreen(),
    );
  }
}


