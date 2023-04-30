import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/pages/gallery_screen.dart';
import 'package:too_see/pages/pageView.dart';
import 'package:too_see/pages/recognize_pages/frontFace_screen.dart';
import 'package:too_see/pages/voice_pages/hear_sound.dart';
import 'package:too_see/pages/voice_pages/voice_page1.dart';


class endRecognize extends StatelessWidget {
  const endRecognize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return voice_page1();
                        },),);
                      },
        child: Container(
          color: Colors.white,
          child: Stack(
              children:[
          
          Image(
                image: AssetImage("images/shape.png"),
              ),
              
          Padding(
            padding: const EdgeInsets.only(top: 90,left: 50,right: 50),
            child: SvgPicture.asset("images/man_waving.svg",),
          ),
           Padding(
             padding: const EdgeInsets.only(top:390,left: 10,right: 10),
             child: Container(
              color: Colors.white,
               child: Text(
                  'Now blind users might say Hi when they recognize your face',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, 
                  fontFamily: 'cairo-Bold',
                  color: Color(0xff16558C),
                  ),
                  
                ),
             ),
           ),],),
        ),
      ),
    );
  }
}