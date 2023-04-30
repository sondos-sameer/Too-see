import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:too_see/widgets/vedioCallBar.dart';



class vedioCall extends StatelessWidget {
  const vedioCall({super.key});

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
                    'Chat',
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
              color: Colors.white,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('images/vedioCall.png',fit: BoxFit.cover,),
                 VedioCallBar(),
                  
                ],
              ),
               ),],),
           
            ),
          
        ),
      );
  }
}