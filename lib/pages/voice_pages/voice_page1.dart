import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/pages/voice_pages/hear_sound.dart';


import '../photos_pages.dart';

class voice_page1 extends StatelessWidget {
  const voice_page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return hearSound();
                        },),);
                      },
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image(
                    image: AssetImage("images/shape.png"),
                  ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20 ),
                child: SvgPicture.asset("images/hear_name.svg",),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    'let other blind users hear \n your name in your own voice',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, 
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