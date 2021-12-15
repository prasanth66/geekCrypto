import 'package:crypto_geek/screens/widgets/header_drawer.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security"),
        centerTitle: true,
      ),
      drawer: HeaderDrawer(),
      body: Column(
        children: [
          ListTile(
            title: Text("Lock Outgoing transaction"),
            leading: Radio(
              value: 1,
              groupValue: 0,
              onChanged: (value) {

              },
              activeColor: Colors.green,
            ),
          ),
          ListTile(
            title: Text("Pin Lock"),
            leading: Radio(
              value: 1,
              groupValue: 0,
              onChanged: (value) {

              },
              activeColor: Colors.green,
            ),
          ),
          ListTile(
            title: Text("Touch ID"),
            leading: Radio(
              value: 1,
              groupValue: 0,
              onChanged: (value) {

              },
              activeColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
