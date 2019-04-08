import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:netflix/Page/signup_screen.dart';



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: <Widget>[
          Carousel(
            indicatorBgPadding: 50.0,
            animationDuration: Duration(seconds: 1),
            images: [
              NetworkImage(
                  "https://i.pinimg.com/originals/89/24/81/892481c8aadbf07b1b3fe65c48a7fcfb.jpg"),
              NetworkImage(
                  "https://i.pinimg.com/originals/22/e8/e6/22e8e6ccc4c97b29bb2767926cdf561b.jpg"),
              NetworkImage(
                  "https://i.pinimg.com/originals/56/d7/7c/56d77ca07ae507f2a967f372b6a4ad8b.jpg"),
              NetworkImage(
                  "https://i.pinimg.com/originals/ce/cd/4e/cecd4eeb073417ba65efdc190df9a61e.jpg")
            ],
          ),
          Align(
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text("Sing in Netflix"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
            ),
            alignment: Alignment.bottomCenter,
          )
        ],
      )),
    );
  }
}
