import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class chatUser extends StatefulWidget {
  const chatUser({super.key});

  @override
  State<chatUser> createState() => _chatUserState();
}

class _chatUserState extends State<chatUser> {
  @override
  Widget build(BuildContext context) {
    return Card( child: InkWell(
      onTap: (){},
      child: const ListTile(
        
        //user profile picture
        
        leading: CircleAvatar(
                        radius: 25,
                        child: Icon(CupertinoIcons.person),),
        //user name
        title: Text('User Name',style: TextStyle(
          fontSize: 20,
                          fontFamily: 'cairo-Bold',
                          color: Color(0xff16558C),
        ),),
        //last message
        subtitle: Text('Last User message', maxLines: 1,),
      ),
      
                  
    ));
  }
}