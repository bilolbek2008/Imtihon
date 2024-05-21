import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imithon/xarid_qilish/shop2.dart';


class Shop1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Back button action
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/img_12.png",
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/img_13.png"),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Payment method',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '**** **** **** 1324',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '\$35.55',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('Add Card'),
                    onPressed: () {
                      // Add Card action
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.location_on),
                    label: Text('Address'),
                    onPressed: () {
                      // Address action
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shop2()),
                  );
                },
                child: Center(child: Text('Pay Now', style: TextStyle(fontSize: 18,color: Colors.white))),
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