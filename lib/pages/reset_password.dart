import 'package:flutter/material.dart';
import 'package:too_see/widgets/button.dart';


import '../widgets/textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Image(
                      image: AssetImage("images/shape.png"),
                    ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage("images/scroll.png"),
                  ),
                ),
                Text(
                    "Reset\nPassword ?",
                    style: TextStyle(fontSize: 35, 
                    fontFamily: 'Notosans-Bold',
                    color: Color(0xff16558C),),
                    
                  ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                  child: textfield(
                      hintText: 'New password',
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                  child: textfield(
                      hintText: 'Confirm new password',
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right: 45,bottom: 30,top: 20),
                  child: button(text: 'Submit',)
                ),
              ],
            ),
          ),
      ),
    );
  }
}