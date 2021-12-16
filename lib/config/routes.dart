import 'package:crypto_geek/screens/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:crypto_geek/screens/entry_screen/entry_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>EntryScreen());
      case '/bottomNavigation':
        return MaterialPageRoute(builder: (_)=>BottomNavigation());
      default :
        return MaterialPageRoute(builder: (_)=>EntryScreen());
    }
  }
}