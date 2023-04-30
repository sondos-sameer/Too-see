import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:too_see/pages/voice_pages/voice_page3.dart';
import 'package:too_see/widgets/button.dart';
import 'package:too_see/widgets/smallButton.dart';

class hearSound extends StatelessWidget {
  const hearSound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,top: 100,bottom: 20),
              child: Text(
                      'speak your name after the sound!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, 
                      fontFamily: 'cairo-Bold',
                      color: Color(0xff16558C),
                      ),
                      
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                        height: 111,
                        width: 217,
                        child: Icon(Icons.play_arrow,color: Colors.white,
                        size: 100,),
                        decoration: BoxDecoration(
                          color: Color(0xff052159),
                          borderRadius: BorderRadius.circular(42),
                        ),
                      ),
            ),
            GestureDetector(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return voicePage3();
                        },),);
                      },
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: smallButton(text: 'Done'),
              ),
            ),
          ],
        ),
      )
      );
  }
}