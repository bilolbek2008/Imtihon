import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imithon/widgets/shop.dart';
import 'package:imithon/xarid_qilish/shop1.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../widgets/bottomWidget.dart';



class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  var u = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shopping Card"),
        actions: [

          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Menu tugmasi bosilganda nima qilish kerakligini qo'shing
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(var i = 0;i < 3;i++)ShopWidget(),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text("Items",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF1E1E1E),
                  ),),
                  Spacer(),
                  Text("\$ 152.25",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF50555C),
                  ),),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Text("Discounts",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF1E1E1E),
                  ),),
                  Spacer(),
                  Text("-\$ 2.25",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF50555C),
                  ),),
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                height: 3,
                width: double.infinity,
                color: Color(0xFFE0E0E0),

              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text("Grand total",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF1E1E1E),
                  ),),
                  Spacer(),
                  Text("\$ 150.00",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFB0673B),
                  ),),
                ],
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ZoomTapAnimation(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Shop1()),
                    );
                  },
                    child: Container(
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFA9612F)
                        ),
                        child: Center(child: Text("Checkout")))),
              )
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



