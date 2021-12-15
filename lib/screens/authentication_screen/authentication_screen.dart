import 'package:crypto_geek/screens/authentication_screen/sign_in.dart';
import 'package:crypto_geek/screens/authentication_screen/sign_up.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("CRYPTO GEEK"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Sign Up",
              ),
              Tab(
                text: "Sign In",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SignUp(),
            SignIn()
          ],
        ),
      ),
    );
  }
}
