import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:too_see/pages/gps_page.dart';


class GpsScreen extends StatelessWidget {
  const GpsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GestureDetector(
        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                              return GpsPage();
                          },),);
                        },
        child: Column(
          
          children: [
         
            SizedBox(
                    height: 248,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66),
              child: Image(image: AssetImage("images/gps.png"),
              ),
            ),
            SizedBox(
                    height: 23,
                  ),
            Text('GPS', style: TextStyle(fontSize: 30, fontFamily: 'cairo-Bold', 
            color: Color(0xff052159)),),
            SizedBox(
                    height: 45,
                  ),
          ],
        ),
      )
    );
  }
}
