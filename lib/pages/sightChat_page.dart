import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/chatBubble.dart';

class sightChat extends StatelessWidget {
  const sightChat({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Container(
      color: Color(0xffC4EEF2),
      child: Container(
        margin: const EdgeInsets.only(top: 59),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xff699EBF),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chat',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo-Bold',
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },child: Image(image: AssetImage("icons/back-white.png"),),),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 59),
              color: Colors.white,
               child:Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => chatBubble(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
            Icons.keyboard_voice_outlined,
            color: Color(0xff699EBF),
            size: 30,
          ),
                suffixIcon:Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xff699EBF),
                          child: Icon(Icons.arrow_forward,
                  color:Colors.white,),),
                ), 
                enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xff699EBF))),
              ),
            ),
          )
        ],
      ),),],),
           
            ),
          
        ),
      );
    
  }
}
//Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemBuilder: (context, index) => chatBubble(),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(6),
//             child: TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(
//             Icons.keyboard_voice_outlined,
//             color: Color(0xff699EBF),
//             size: 30,
//           ),
//                 suffixIcon:Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: CircleAvatar(
//                           radius: 20,
//                           backgroundColor: Color(0xff699EBF),
//                           child: Icon(Icons.arrow_forward,
//                   color:Colors.white,),),
//                 ), 
//                 enabledBorder:OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide(color: Color(0xff699EBF))),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
