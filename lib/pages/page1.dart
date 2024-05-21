import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imithon/pages/page2.dart';
import 'package:imithon/pages/page2dan2.dart';
import 'package:imithon/pages/page3.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Iltimos elektron pochta kiriting";
    } else if (!value.contains("@") ||
        !value.substring(value.indexOf("@")).contains(".")) {
      return "To'g'ri elektron pochta kiriting";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Iltimos parol kiriting";
    } else if (value.length < 8) {
      return "Iltimos eng kamida 8ta element kiriting";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png"),
              const Center(
                child: Text(
                  "Welcome back!",
                  style: TextStyle(
                      color: Color(0xFF552B1B),
                      fontWeight: FontWeight.w800,
                      fontSize: 35),
                ),
              ),
              const Center(
                child: Text(
                  "Please enter your account here",
                  style: TextStyle(
                      color: Color(0xFF552B1B),
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: "Enter Email",
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/email.svg"),
                        ),
                      ),
                      validator: validateEmail,
                      onSaved: (newValue) {
                        if (newValue != null && newValue.isNotEmpty) {
                          email = newValue;
                        }
                      },
                    ),
                    SizedBox(height: 10.h),
                    const Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFD7C3B3),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: "Enter Password",
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.lock, color: Color(0xFFA9612F)),
                        ),
                      ),
                      validator: validatePassword,
                      onSaved: (newValue) {
                        if (newValue != null && newValue.isNotEmpty) {
                          password = newValue;
                        }
                      },
                    ),


                    Padding(
                        padding: const EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 25),
                        child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState!.validate()) {
                              if(formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page3()),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFA9612F),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("RO'YXATDAN O'TISH"),
                            ],
                          ),
                        ),
                      ),
                    Text("Or continue with",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      color: Color(0xFF898A8D)

                    ),),

                    Padding(
                        padding: const EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/img_4.png",width: 20,height: 20,),
                                SizedBox(width: 3.w,),
                                Text("Google"),
                              ],
                            ),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have any account?",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF898A8D)
                        
                        ),),
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Registerpage()),
                          );
                        }, child:  Text("Sign in",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange,

                        ),),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
