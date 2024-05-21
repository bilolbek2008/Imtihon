import 'package:flutter/material.dart';



class LikeWidgets extends StatefulWidget {
  const LikeWidgets({super.key});

  @override
  State<LikeWidgets> createState() => _LikeWidgetsState();
}

class _LikeWidgetsState extends State<LikeWidgets> {

  bool icons = true;
  Icon icons1 = Icon(Icons.favorite_border,color: Colors.white,);
  Icon icons2 = Icon(Icons.favorite,color: Colors.red);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF7F7F7),
      ),

      child: Stack(
        children: [
          Image.asset("assets/images/img_6.png",width: 135,height: 135,),
          Positioned(
            bottom: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cappuccino",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Text("Without Milk",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF50555C)),),
                Row(
                  children: [
                    Text("\$ ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFFCB7541)),),
                    Text("20.53",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF1E1E1E)),),
                    SizedBox(width: 35,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Color(0xFFA9612F),
                      ),
                      child: IconButton(onPressed: (){
                      }, icon: Icon(Icons.add,color: Colors.white,)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 3,
            top: 3,
            child:Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 2,
                    spreadRadius: 1,
                  )
                ],
                color: Colors.grey,
              ),
              child: IconButton(onPressed: (){
                icons =! icons;
                setState(() {

                });

              }, icon: icons ? icons1 : icons2),
            ),),

        ],
      ),
    );
  }
}
