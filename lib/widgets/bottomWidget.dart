import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/page3.dart';
import '../pages/page5.dart';
import '../pages/page6.dart';
import '../pages/page7.dart';

class Bottomwidget extends StatefulWidget {
  const Bottomwidget({super.key});

  @override
  State<Bottomwidget> createState() => _BottomwidgetState();
}

class _BottomwidgetState extends State<Bottomwidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      notchMargin: 5,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page3()));
            },
            child: Column(
              children: [
                Icon(Icons.home_filled,color: Colors.grey,),
                Text("home",style: TextStyle(
                  color: Colors.grey,
                ),)
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page5()));
            },
            child: Column(
              children: [
                SvgPicture.asset("assets/icons/card.svg"),
                Text("card",style: TextStyle(
                  color: Colors.grey,
                ),)
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page6()),
              );
            },
            child: Column(
              children: [
                Icon(Icons.favorite,color: Colors.grey,),
                Text("like",style: TextStyle(
                  color: Colors.grey,
                ),)
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page7()),
              );
            },
            child: Column(
              children: [
                Image.asset("assets/images/img_9.png",width: 20,),
                Text("Profile",style: TextStyle(
                  color: Colors.grey,
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
