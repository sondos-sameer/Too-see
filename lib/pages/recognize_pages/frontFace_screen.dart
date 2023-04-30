import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/pages/recognize_pages/leftFace_screen.dart';

import '../voice_pages/hear_sound.dart';

class frontFace extends StatelessWidget {
  const frontFace({super.key});

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
                  'Now we will take three selfies let\'s start with front face!',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 40),
              child: 
              GestureDetector(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return leftFace();
                        },),);
                      },
                      child: SvgPicture.asset("images/button.svg",height: 100,width: 100,)),
            ),
            
          ],
        ),
      ),
    );
  }
}