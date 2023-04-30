import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/pages/recognize_pages/frontFace_screen.dart';
import 'package:too_see/pages/voice_pages/hear_sound.dart';


class recognizeFace extends StatelessWidget {
  const recognizeFace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return frontFace();
                        },),);
                      },
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image(
                    image: AssetImage("images/shape.png"),
                  ),
              SvgPicture.asset("images/recognize.svg",),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    'Recognize your face',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, 
                    fontFamily: 'cairo-Bold',
                    color: Color(0xff052159),
                    ),
                    
                  ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}