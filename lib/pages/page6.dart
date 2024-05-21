import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imithon/pages/page3.dart';
import 'package:imithon/pages/page5.dart';
import 'package:imithon/pages/page7.dart';
import 'package:imithon/widgets/like_widgets.dart';

import '../widgets/bottomWidget.dart';



class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  List<String> ls = ["Espresso","Macchiato","Corretto"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favorite Items"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 30,
                runSpacing: 20,
                children: [
                  for(var i = 0;i<3;i++)LikeWidgets(),
                ],
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



