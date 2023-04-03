import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:too_see/pages/chatPeople_page.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GestureDetector(
        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                              return chatPeople();
                          },),);
                        },
        child: Column(
          children: [
            SizedBox(
                    height: 259,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image(image: AssetImage("images/chat.png"),
              ),
            ),
            SizedBox(
                    height: 23,
                  ),
            Text('CHAT', style: TextStyle(fontSize: 30, fontFamily: 'cairo-Bold', 
            color: Color(0xff052159)),),
            SizedBox(
                    height: 45,
                  ),
          ],
        ),
      )
    );
  }
}
