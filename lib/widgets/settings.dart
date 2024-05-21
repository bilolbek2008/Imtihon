import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h,),
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
              Text("Receiving notification"),
              Spacer(),
              Icon(Icons.navigate_next_outlined)
            ],
          ),
        ),
      ],
    );
  }
}


