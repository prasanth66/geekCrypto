import 'package:crypto_geek/screens/account_screen/profile.dart';
import 'package:crypto_geek/screens/account_screen/profile_image.dart';
import 'package:crypto_geek/screens/widgets/header_drawer.dart';
import 'package:flutter/material.dart';

import 'bank_details.dart';
import 'kyc.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      drawer: HeaderDrawer(),
      body: Column(
          children: [
            ProfileImage(),
            DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white10,
                        tabs: [
                          Tab(text: 'Profile'),
                          Tab(text: 'KYC'),
                          Tab(text: 'Bank Details'),

                        ],
                      ),
                    ),
                    Container(
                      height: 350, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      child: TabBarView(
                        children: [
                          Profile(),
                          Kyc(),
                          BankDetails(),
                        ],
                      ),
                    )
                  ],
                )
            ),

          ],
      ),
    );
  }
}
