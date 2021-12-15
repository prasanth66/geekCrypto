import 'package:crypto_geek/screens/widgets/header_drawer.dart';
import 'package:flutter/material.dart';


class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet"),
        centerTitle: true,
      ),
      drawer: HeaderDrawer(),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.account_balance_wallet_rounded,size: 45,),
            Text("RS 0.0"),
            ElevatedButton(
                onPressed: (){},
                child: Text("Add Balence")
            )
          ],
        ),
      ),
    );
  }
}
