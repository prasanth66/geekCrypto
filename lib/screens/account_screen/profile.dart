import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('Prasanth'),
          leading: Icon(Icons.account_circle_sharp),
        ),
        ListTile(
          title: const Text('9876543210'),
          leading: Icon(Icons.phone),
        ),
        ListTile(
          title: const Text('Prasanth@gmail.com'),
          leading: Icon(Icons.mail),
        ),
        ListTile(
          title: const Text('English'),
          leading: Icon(Icons.language),
        ),
      ],
    );
  }
}
