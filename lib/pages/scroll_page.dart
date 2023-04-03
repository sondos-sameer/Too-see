import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_see/pages/photos_pages.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

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
                    'Scroll left or right to find',
                    style: TextStyle(fontSize: 30, 
                    fontFamily: 'cairo-Bold',
                    color: Color(0xff052159),),
                    
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    'the image you capture',
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
