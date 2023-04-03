import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';
import 'package:too_see/widgets/chatOption.dart';

import '../widgets/chatBubble.dart';

class blindChat extends StatelessWidget {
  const blindChat({super.key});

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
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => ChatBubbleForFriend(),
                      ),
                    ),
                    Container(
                      height: 100,
                      color: Color(0xff699EBF),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Spacer(),
                            chatOption(
                              icon: Icons.keyboard_voice_outlined,
                              optionName: 'Recorde',
                            ),
                            Spacer(),
                            chatOption(
                              icon: Icons.location_on_outlined,
                              optionName: 'Location',
                            ),
                            Spacer(),
                            chatOption(
                              icon: Icons.image_outlined,
                              optionName: 'Gallery',
                            ),
                            Spacer(),
                            chatOption(
                              icon: Icons.videocam_outlined,
                              optionName: 'Video',
                            ),
                            Spacer(),
                          ]),
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
