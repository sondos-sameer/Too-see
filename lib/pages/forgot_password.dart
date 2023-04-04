import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/button.dart';
import '../widgets/textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [ Image(
                        image: AssetImage("images/shape.png"),
                      ),
                
                 Padding(
                   padding: const EdgeInsets.only(top:70,left: 40,right: 40,),
                   child: SvgPicture.asset("images/Forgot.svg",),
                 ),],),
                Text(
                    "Forgot\nPassword?",
                    style: TextStyle(fontSize: 35, 
                    fontFamily: 'Notosans-Bold',
                    color: Color(0xff16558C),),
                    
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                      'Don\'t Worry! it happens. Please enter your the address associated with your account.',
                      style: TextStyle(fontSize: 14, 
                      fontFamily: 'Notosans-semiBold',
                      color: Color(0xff16558C),),
                      
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 45),
                  child: textfield(
                      hintText: '@ Email ID',
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right: 45,bottom: 20),
                  child: button(text: 'Submit',),
                ),
              ],
            ),
          ),
      ),
    );
  }
}