import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CofeeWidget extends StatelessWidget {
  final String label;

  const CofeeWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          SvgPicture.asset("assets/icons/cofee.svg", width: 24, height: 24),
           SizedBox(width: 8.w),
          Text(
            label,
            style: const TextStyle(
              color: Colors.brown,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}