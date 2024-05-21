import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imithon/pages/page3.dart';
import 'package:imithon/pages/page5.dart';
import 'package:imithon/pages/page6.dart';
import 'package:imithon/widgets/settings.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../widgets/bottomWidget.dart';



class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();

}

class _Page7State extends State<Page7> {

  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
        actions: [
          IconButton(onPressed: (){}, icon: Container(
            height: 50,
            width:40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0xFFF4F4F4),
            ),

              child: Icon(Icons.edit_off_outlined)),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/img_11.png",height: 70,width:70,),
                  SizedBox(width: 10.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alexander",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),),
                      Text("Golovin",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Container(
                      height: 50,
                      width:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Color(0xFFF4F4F4),
                      ),

                      child: Icon(Icons.nightlight_round_outlined)),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF6F6F6),
                ),
                child: Row(
                  children: [
                    Text("Receiving notification",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                    color: Colors.black),),
                    Spacer(),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });},
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
              ),
              for(var i = 0;i<5;i++)SettingsWidget(),
              SizedBox(height: 10.h,),
              ZoomTapAnimation(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login,color: Colors.red,),
                    Text("Log out",style: TextStyle(color: Colors.red),)
                  ],
                ),
              ),
              SizedBox(height: 20.h,),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor:  Color(0xFFA9612F),
          child: SvgPicture.asset("assets/icons/shop.svg")
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottomwidget(),
    );
  }
}



