import 'package:flutter/material.dart';


import 'package:too_see/widgets/imageBubble.dart';

import '../widgets/chatBubble.dart';
import 'provider/language.dart';

class sightChat extends StatelessWidget {
   sightChat({super.key});
  Language _language = Language();
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
                    _language.tCHAT(),
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
          Expanded(child: ListView(
            children: [
              chatBubble('how are you?'),
              imageBubble('images/picInChat1.png'),
              
            ],
            
          )),
          
          TextField(
            decoration: InputDecoration(
              prefixIcon: 
              
          Icon(
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
          )
        ],
      ),),],),
           
            ),
          
        ),
      );
    
  }
}
