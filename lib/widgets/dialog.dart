import 'dart:ui';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:too_see/widgets/button.dart';

import '../pages/signin_page.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(55)),
      child: Container(
        height: 300,
        child: Column(
          
          children: [
            SvgPicture.asset(
              "icons/done.svg",
              
            ),
            Text(
              "Verified!",
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Notosans-Bold',
                  color: Color(0xff16558C)),
            ),
            Text(
              "Yahoo! You have Successfully verified the account",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Notosans-semiBold',
                  color: Color(0xff16558C),
                  ),
                  textAlign: TextAlign.center,
            ),

            GestureDetector(
               onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return signinPage();
                        },),);
                      },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:17,vertical: 8),
                child: button(text: 'Go to Dashboard',),
              ),
            )
          ],
        ),
      ),
    );
  }
}
