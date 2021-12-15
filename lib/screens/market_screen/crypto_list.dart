import 'package:flutter/material.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({Key? key}) : super(key: key);

  @override
  _CryptoListState createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  final List items = [
    "ZenCash",
    "BitCoin",
    "Etherium",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.fromLTRB(0,15,0, 0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
              child: ListTile(
                leading: Icon(Icons.monetization_on,size: 30,),
                title: Text(items[index]),
                subtitle: Text("2 mar 2019"),
                trailing: Text("-315.26"),
              ),
            );
          }
      ),
    );
  }
}
