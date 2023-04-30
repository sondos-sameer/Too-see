import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:too_see/pages/gpsSight_page.dart';
import 'package:too_see/pages/gps_page.dart';
import 'package:too_see/pages/provider/language.dart';


class GpsScreen extends StatefulWidget {
 GpsScreen({super.key});

  @override
  State<GpsScreen> createState() => _GpsScreenState();
}

class _GpsScreenState extends State<GpsScreen> {
Language _language = Language();
 var userType;


  @override
      getPref() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    userType = preferences.getString('userType');
  }
   
  void initState(){
     getPref();
    super.initState();
    setState(() {
      _language.getLanguage();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GestureDetector(
        onTap: (){
             if (userType=='Blind'){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                            return GpsPage();
                        },),);}
                         else{
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                            return GpsSightPage();
                        },),);
                         }
                        
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
            Text(_language.tGPS(), style: TextStyle(fontSize: 30, fontFamily: 'cairo-Bold', 
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
