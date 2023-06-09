import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_see/pages/photos_pages.dart';

import 'provider/language.dart';

class ScrollPage extends StatelessWidget {
   ScrollPage({super.key});
Language _language = Language();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return PhotosPage();
                        },),);
                      },
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
                  image: AssetImage("images/scroll.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    _language.tScroll(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, 
                    fontFamily: 'cairo-Bold',
                    color: Color(0xff052159),),
                    
                  ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
