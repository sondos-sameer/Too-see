import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/pages/pageView.dart';

class voicePage3 extends StatelessWidget {
  const voicePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return pageView();
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
                padding: const EdgeInsets.symmetric(horizontal:70 ),
                child: SvgPicture.asset("images/can_hear.svg",),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                child: Text(
                    'Now blind users can hear your name in your voice now',
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