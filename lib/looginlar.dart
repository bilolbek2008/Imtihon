import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imithon/logins/Login3.dart';
import 'package:imithon/logins/login.dart';
import 'package:imithon/logins/login2.dart';
import 'package:imithon/pages/page1.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();

}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (i) {
                currentIndex = i;
                setState(() {});
              },
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [Login1(), Login2(), Login3()],
            ),
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ...List.generate(3, ((index){
                 return SvgPicture.asset(currentIndex == index ? "assets/icons/icon1.svg" : "assets/icons/icons.svg");



               }))
              ],
            ),
          SizedBox(height: 150.h,),

        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: ZoomTapAnimation(
          child: Container(
            width: double.infinity,
            height: 55.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFA9612F),
            ),
            child:Center(
              child: Text("Next",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFF0CEAB),
              ),),
            ),
          ),
          onTap: () {

            currentIndex != 2
                ? pageController.animateToPage(currentIndex + 1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear)
                : Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
