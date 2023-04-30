import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:too_see/widgets/audioCallBar.dart';
import 'package:too_see/widgets/vedioCallBar.dart';

import 'provider/language.dart';



class audioCall extends StatelessWidget {
   audioCall({super.key});

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
              color: Color(0xffE8E7E7),
              child: Column(
                children: [
                  SizedBox(
                        height: 130,
                  ),
                  CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('images/caller.jpg'),
                            ),
                  SizedBox(
                        height: 10,
                  ),
                  Text('caller name',style: TextStyle(fontSize: 20, fontFamily: 'cairo-Bold'),),
                  Text('1:33:00',style: TextStyle(fontSize: 20, fontFamily: 'cairo-Bold'),),
                  SizedBox(
                        height: 130,
                  ),
                  audioCallBar(),
      
                ],
              ),
              
               ),],),
           
            ),
          
        ),
      );
  }
}