import 'package:flutter/material.dart';
import 'package:imithon/xarid_qilish/shop1.dart';

import '../widgets/shop.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: Color(0xFFF0CEAB),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(180),
                  bottomRight: Radius.circular(180),
                )
              ),
            ),),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey,
                    ),
                    child: Icon(Icons.play_arrow),
                  )),
                  Text("Cappuccino"),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey,
                    ),
                    child: Icon(Icons.favorite),
                  )),


                ],
              ),
              Image.asset("assets/images/img_18.png"),
              Center(child: ShopWidget()),
              SizedBox(height: 8),
              Text(
              'Description',
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),
              ),
              Text(
              'A cappuccino is a coffee-based drink made primarily from espresso and milk.... Read More',
              style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
              'Ingredients',
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),
              ),
              Row(
              children: [
              FilterChip(
              label: Text('Coffee'),
              selected: true,
              onSelected: (bool value) {},
              ),
              SizedBox(width: 10),
              FilterChip(
              label: Text('Milk'),
              selected: true,
              onSelected: (bool value) {},
              ),
              ],
              ),
              SizedBox(height: 10),
              Text(
              'Size',
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              _buildSizeOption('Short', '8 fl OZ'),
              _buildSizeOption('Tall', '12 fl OZ'),
              _buildSizeOption('Grande', '16 fl OZ'),
              _buildSizeOption('Venti', '20 fl OZ'),
              ],
              ),
              Spacer(),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
              '\$25.53',
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
              ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shop1()),
                  );
                  },
                  child: Text('Buy Now'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xFFA9612F), // Matn rangi
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                )

              ],
              ),
            ],
          ),
          ]
        ),
      ),
    );
  }

  Widget _buildSizeOption(String size, String volume) {
    return Column(
      children: [
        Icon(Icons.local_drink, size: 40),
        SizedBox(height: 5),
        Text(size),
        Text(volume),
      ],
    );
  }
}