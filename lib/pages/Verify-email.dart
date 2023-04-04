import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verifyEmail extends StatelessWidget {
   verifyEmail({super.key});
TextEditingController controller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(left:50,right: 50,top: 60,),
                  child: SvgPicture.asset("images/verify .svg",),
                ),
               
                Text(
                    "Verify\nyour email",
                    style: TextStyle(fontSize: 35, 
                    fontFamily: 'Notosans-Bold',
                    color: Color(0xff16558C),),
                    
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 15,right:20),
                  child: Text(
                      'Please Enter the 4 digit code send to your mail @example.com',
                      style: TextStyle(fontSize: 13, 
                      fontFamily: 'Notosans-semiBold',
                      color: Color(0xff16558C),),
                      
                    ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:60,vertical: 15,),
                  child: PinCodeTextField(appContext: context,
                controller: controller,
                length: 4,
                cursorHeight: 19,
                enableActiveFill: true,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(15),
                  borderWidth: 0.5,
                  inactiveColor: Colors.black,
                  activeColor: Colors.black,
                  selectedFillColor:Color(0xffE9EFFD),
                  selectedColor:Colors.black,
                  inactiveFillColor: Colors.white,
                  activeFillColor: Color(0xffC4EEF2),
                  
                ),
                onChanged: (value) {
                  
                },
                ),),
                Text('Resend code',style: TextStyle(
                  fontSize: 15, fontFamily: 'Notosans-semiBold',
                      color: Color(0xff16558C),
                ),),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45,right: 45,bottom: 20),
                  child: button(text: 'Conform',),
                ),
                
              ],
            ),
          ),
      ),
    );
  }
}