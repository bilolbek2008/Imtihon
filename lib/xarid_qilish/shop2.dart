import 'package:flutter/material.dart';
import 'package:imithon/xarid_qilish/shop3.dart';

class Shop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Track'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/img_15.png"),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_14.png"), // Rasm manzilini to'g'rilang
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Eko Sanchez', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Your rider'),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () {
                      // Call action
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/img_16.png"),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery time', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('15 Minutes',style: TextStyle(
                        color: Color(0xFFA9612F),),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/img_17.png"),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery address', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Solo jagii Street',style: TextStyle(
                        color: Color(0xFFA9612F),
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
                },
                child: Center(child: Text("Details orders", style: TextStyle(fontSize: 18,color: Color(0xFFF0CEAB)))),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
