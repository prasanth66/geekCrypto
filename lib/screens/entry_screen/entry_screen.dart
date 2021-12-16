import 'package:crypto_geek/screens/authentication_screen/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class EntryScreen extends StatelessWidget {
   EntryScreen({Key? key}) : super(key: key);
   static const imagesList = [
     "assets/images/bitcoin1.png",
     "assets/images/bitcoin2.png",
     "assets/images/bitcoin3.png",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100.0,),
          const Text(
            "WELCOME TO CRYPTO GEEK",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(
            child: Swiper(
              itemBuilder: (BuildContext context,int index){
                return Image.asset(imagesList[index],fit: BoxFit.fill,);
              },
              itemCount: imagesList.length,
              pagination: SwiperPagination(),
              // control: SwiperControl(),
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const AuthenticationScreen(),
              ),);
                },
              child: Text("GET STARTED")
          ),
          SizedBox(height: 100.0,),
        ],
      )

    );
  }
}
