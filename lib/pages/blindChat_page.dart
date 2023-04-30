import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';
import 'package:too_see/widgets/blindChatBar.dart';

import 'package:too_see/widgets/imageBubble.dart';
import 'package:too_see/widgets/voiceBubble.dart';

import '../widgets/chatBubble.dart';
import 'provider/language.dart';

class blindChat extends StatelessWidget {
   blindChat({super.key});
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
                    GestureDetector(child: Image(image: AssetImage("icons/back-white.png"),),onTap: (){
                        Navigator.pop(context);
                      },),
                  ],
                ),
              ),
              Container(
                
                width: double.infinity,
                margin: const EdgeInsets.only(top: 59),
                color: Colors.white,
                child: Stack(
                  
                  children: [
                    
                    Expanded(
                      child: ListView(
                        children: [
                          imgBubbleForFriend('images/picInChat1.png'),
                          ChatBubbleForFriend(),
                          imageBubble('images/cat-example.jfif'),
                          
                          
                          
                        ],
                      ),
                    ),
                    
                    blindChatBar(),
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
