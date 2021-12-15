import 'package:crypto_geek/screens/account_screen/account_screen.dart';
import 'package:crypto_geek/screens/market_screen/market_screen.dart';
import 'package:crypto_geek/screens/my_wallet_screen/my_wallet_screen.dart';
import 'package:crypto_geek/screens/security_screen/security_screen.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
      const DrawerHeader(
      decoration: BoxDecoration(
      color: Colors.lightGreen,
      ),
      child: Text('Drawer Header'),
    ),
          ListTile(
            title: const Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const MarketScreen(),
              ),);
            },
          ),
          ListTile(
            title: const Text('Account'),
            leading: Icon(Icons.account_balance),
            onTap: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const AccountScreen(),
              ),);
            },
          ),
          ListTile(
            title: const Text('My Wallet'),
            leading: Icon(Icons.account_balance_wallet_rounded),
            onTap: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const MyWalletScreen(),
              ),);
            },
          ),
          ListTile(
            title: const Text('Security'),
            leading: Icon(Icons.security),
            onTap: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const SecurityScreen(),
              ),);
            },
          ),
          ListTile(
            title: const Text('Refer a friend'),
            leading: Icon(Icons.account_circle_sharp),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Help'),
            leading: Icon(Icons.help),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Sign Out'),
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.pop(context);
            },
          ),

    ]
      ),
    );
  }
}
