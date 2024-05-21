import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imithon/pages/page2dan3.dart';
import 'package:imithon/pages/page5.dart';
import 'package:imithon/pages/page6.dart';
import 'package:imithon/pages/page7.dart';
import 'package:imithon/widgets/bottomWidget.dart';
import 'package:imithon/widgets/coffe_widgets.dart';
import 'package:imithon/widgets/like_widgets.dart';



class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
List<String> ls = ["Espresso","Macchiato","Corretto"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.location_pin, color: Colors.brown),
                          const SizedBox(width: 4),
                          const Text(
                            "A - 2313 Broadway, New York , Ny 10223",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 20.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  children: [
                    for(var i = 0;i<3;i++)
                      CofeeWidget(label: ls[i]),
                    SizedBox(width: 5.w,),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search here...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 20.h,),
              Wrap(
                spacing: 30,
                runSpacing: 20,
                children: [
                  for(var i = 0;i<6;i++)LikeWidgets(),
                ],
              ),




            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Menu()));
          },
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



