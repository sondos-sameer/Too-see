import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/pages/recognize_pages/endRecognize_screen.dart';

import '../voice_pages/hear_sound.dart';

class rightFace extends StatelessWidget {
  const rightFace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 60,),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              child: Text(
                  'lastly, to the right!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, 
                  fontFamily: 'cairo-Bold',
                  color: Color(0xff16558C),
                  ),
                  
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SvgPicture.asset("images/capture.svg",),
            ),
            GestureDetector(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return endRecognize();
                        },),);
                      },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 40),
                child: SvgPicture.asset("images/button.svg",height: 100,width: 100,),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}