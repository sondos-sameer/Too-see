import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:too_see/pages/signin_page.dart';
import 'package:too_see/widgets/button.dart';


import '../widgets/textfield.dart';

class doneReset extends StatelessWidget {
  const doneReset({super.key});

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
                   child: SvgPicture.asset("images/doneReset.svg",),
                 ),],),
                GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return signinPage();
                        },),);
                      },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45,right: 45,bottom: 30,top: 20),
                    child: button(text: 'Go to home page',),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}