import 'package:crypto_geek/screens/entry_screen/entry_screen.dart';
import 'package:crypto_geek/screens/funds_screen/funds_screen.dart';
import 'package:crypto_geek/screens/market_screen/market_screen.dart';
import 'package:crypto_geek/screens/news_screen/news_screen.dart';
import 'package:crypto_geek/screens/trade_screen/trade_screen.dart';
import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  List tabs = [
    MarketScreen(),
    TradeScreen(),
    FundsScreen(),
    NewsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop_windows_sharp),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_sharp),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Funds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vpn_lock_sharp),
            label: 'News',
          ),
        ],
      ),
    );
  }
}
