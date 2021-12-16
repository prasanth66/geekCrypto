import 'package:flutter/material.dart';
import 'package:crypto_geek/screens/entry_screen/entry_screen.dart';

import 'config/routes.dart';


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
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute:  '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}


