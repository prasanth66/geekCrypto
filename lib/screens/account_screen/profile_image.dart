import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250.0,
        ),
        Container(
          // width: 300.0,
          height: 200.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),
        Positioned(
          right: 0.0,
            child: Container(
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.all(3),
                color: Colors.black12,
                child: Icon(Icons.edit)
            )
        ),

        Positioned(
          bottom: 0.0,
            left: 150,
            child: Container(
                width: 120.0,
                height: 120.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://i.imgur.com/BoN9kdC.png")
                    )
                )),
        ),

      ],
    );
  }
}
