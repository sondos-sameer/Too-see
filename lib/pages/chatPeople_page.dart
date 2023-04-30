import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:too_see/pages/blindChat_page.dart';
import 'package:too_see/pages/sightChat_page.dart';
import 'package:too_see/widgets/chatUser.dart';

import 'provider/language.dart';




class chatPeople extends StatefulWidget {
  chatPeople({super.key});

  @override
  State<chatPeople> createState() => _chatPeopleState();
}

class _chatPeopleState extends State<chatPeople> {
  Language _language = Language();

  var userType;

  @override

    getPref() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    userType = preferences.getString('userType');
  }
    void initState(){
      getPref();
    super.initState();
    
  }

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
                      },child: Image(image: AssetImage("icons/back-white.png"))),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 59),
              color: Colors.white,
               child: GestureDetector(
                onTap: (){
                          if (userType=='Blind'){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                            return blindChat();
                        },),);}
                         else{
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                            return sightChat();
                        },),);
                         }
                         
                        },
                 child:Expanded(
                   child: ListView(
                    children: [
                      chatUser(),
                    ],
                   ),
                 )
               )
           
            ),
          ],
        ),
      ),
    ));
  }
}
