import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:too_see/pages/pageView.dart';
import 'package:too_see/pages/recognize_pages/recognize_screen.dart';
import 'package:too_see/pages/signin_page.dart';
import 'package:too_see/widgets/smallButton.dart';



class WelcomePage extends StatefulWidget {
   WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  savePref(String userType) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
   await preferences.setString('userType', userType);
  }
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
                        savePref('Blind');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return recognizeFace();
                        },),);
                      },
              child: smallButton(text:'Blind'),
            ),
                  SizedBox(
                  height: 59,
                ),
                GestureDetector(
                      onTap: (){
                        savePref('Sight');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return pageView();
                        },),);
                      },
           child: smallButton(text: 'Sight',) ),     
          ],
        ),
      ),),
    );
  }
}
