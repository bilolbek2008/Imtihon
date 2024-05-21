import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ShopWidget extends StatefulWidget {
  const ShopWidget({super.key});

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {
  var u = 1;

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
          padding: EdgeInsets.all(11),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE0E0E0)
                ),
                child: Image.asset("assets/images/img_10.png",width: 90,height: 90,),

              ),
              SizedBox(width: 5.w,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Colombia Eugenoides',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      '250g · Omni-roasting',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$51.50',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                if(u == 0) {
                                  u == 0;
                                }
                                else{
                                  u -= 1;
                                }
                                setState(() {

                                });
                              },
                              icon: Icon(Icons.remove),
                              color: Colors.grey,
                            ),
                            Text(
                              u.toString(),
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if(u == 4) {
                                  u == 4;
                                }
                                else{
                                  u += 1;
                                }

                                setState(() {

                                });
                              },
                              icon: Icon(Icons.add),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h,)
      ],
    );
  }
}
