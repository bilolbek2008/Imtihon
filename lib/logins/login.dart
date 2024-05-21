import 'package:flutter/material.dart';
import 'package:imithon/looginlar.dart';
import 'package:imithon/pages/page1.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_1.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SizedBox(height: 20,),
          Row(
                children: [
                  Spacer(),
                  TextButton(
                      onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                  }, child: Text("skip",style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),))
                ],
              ),
          Column(
                children: [
                  SizedBox(height: 50,),
                  Image.asset("assets/images/img_3.png"),
                  SizedBox(height: 20,),
                ],
              ),
          Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  Image.asset("assets/images/img_2.png"),
                  Text("Old fashioned coffee that\ntastes very good and great",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Color(0xFF552B1B)),),

                  Text("We provide a variety of coffee grounds that are\n              old-fashioned and also maintained.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF896E59)
                  ),)
                ],
              ),
            ],
          )
    );
  }
}
