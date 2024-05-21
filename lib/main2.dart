import 'package:flutter/material.dart';
import 'package:imithon/logins/login.dart';
import 'package:imithon/looginlar.dart';

class Imtixon extends StatefulWidget {
  const Imtixon({super.key});

  @override
  State<Imtixon> createState() => _ImtixonState();
}

class _ImtixonState extends State<Imtixon> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/img_1.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Image.asset(
            "assets/images/img.png",
            width: 163,
          ),
        ),
      ],
    );
  }
}

