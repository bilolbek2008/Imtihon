import 'package:flutter/material.dart';
import 'package:imithon/pages/page2dan3.dart';
import 'package:imithon/pages/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override

  @override


  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/img_5.png"),

              Text(
                  "Check your email",
                  style: TextStyle(
                      color: Color(0xFF552B1B),
                      fontWeight: FontWeight.w800,
                      fontSize: 35),
                ),
              Text(
                  "Weve sent the code to your email",
                  style: TextStyle(
                      color: Color(0xFF552B1B),
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = 0; i < 4; i++)
                    SizedBox(
                      width: 65,
                      child: TextFormField(
                        controller: _controllers[i],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 24),
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 1 && i < 3) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                    ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Code expires in:",
                    style: TextStyle(
                        color: Color(0xFF9FA5C0),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Text(
                    "03:12",
                    style: TextStyle(
                        color: Color(0xFFA9612F),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context){
                        return Menu();
                      })
                    );
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
                      IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page3()),
                          );
                        },
                          icon: const Text("Verify")),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFCFCFE),
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
                      const Text("Send again",style: TextStyle(
                        color: Color(0xFF919499)
                      ),),
                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
    );
  }
}
