import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:too_see/pages/pageView.dart';
import 'package:too_see/pages/signin_page.dart';



class WelcomePage extends StatelessWidget {
   WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColoredBox(
  color: Colors.white,
  child :Column(
          children: [
            SizedBox(
                  height: 100,
                ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Image(image: AssetImage("images/welcome.png"),
              width: 385,
              height: 77.7,
              ),
            ),
            SizedBox(
                  height: 45,
                ),
            Text(
              'Select what are you',
              style: TextStyle(fontSize: 30, 
              fontFamily: 'cairo-Bold',
              color: Color(0xff052159),),
            ),
            SizedBox(
                  height: 80,
                ),
            GestureDetector(
              onTap: (){
                         
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return pageView();
                        },),);
                      },
              child: Container(
                      height: 111,
                      width: 217,
                      child: Center(
                        child: Text(
                          'Blind',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'cairo-Bold',
                            fontSize: 39,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff052159),
                        borderRadius: BorderRadius.circular(42),
                      ),
                    ),
            ),
                  SizedBox(
                  height: 59,
                ),
                GestureDetector(
                      onTap: (){
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return pageView();
                        },),);
                      },
           child: Container(
                    height: 111,
                    width: 217,
                    child: Center(
                      child: Text(
                        'sight',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'cairo-Bold',
                          fontSize: 39,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff16558C),
                      borderRadius: BorderRadius.circular(42),
                    ),
                  ), ),     
          ],
        ),
      ),),
    );
  }
}
