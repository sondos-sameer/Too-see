import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';


class chatBubble extends StatelessWidget {
  const chatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
//user message
        Padding(padding: EdgeInsets.only(top: 20),
        child: ClipPath(clipper: LowerNipMessageClipper(MessageType.send),
        child: Container(
          padding: 
          EdgeInsets.only(top: 10,left:10,bottom: 20,right: 20,),
          decoration: BoxDecoration(color: Color(0xff699EBF),),
          child: Text('Hi, where are you?', style: TextStyle(fontSize: 16,color:Colors.white),),
        ),),
        ),

        //user picture
        Padding(
          padding: const EdgeInsets.only(top:30,right: 10),
          child: CircleAvatar(
                          radius: 25,
                          child: Icon(CupertinoIcons.person),
                          backgroundColor: Color(0xff699EBF),),
        ),
        
          
      ],
    );
   
  }
}

//chat bubble for friend
class ChatBubbleForFriend  extends StatelessWidget {
  const ChatBubbleForFriend ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //friend picture
         Padding(
          padding: const EdgeInsets.only(top:30,left: 10),
          child: CircleAvatar(
                          radius: 25,
                          child: Icon(CupertinoIcons.person),
                          backgroundColor: Color(0xffC4EEF2),),
        ),
        
        //friend message
        Padding(padding: EdgeInsets.only(top: 20),
        child: ClipPath(clipper: LowerNipMessageClipper(MessageType.receive),
        child: Container(
          padding: 
          EdgeInsets.only(top: 10,left:20,bottom: 20,right: 10,),
          decoration: BoxDecoration(color: Color(0xffC4EEF2),),
          child: Text('--------', style: TextStyle(fontSize: 16,color:Colors.black),),
        ),),
        ),
       
          
      ],
    );
   
  }
}


