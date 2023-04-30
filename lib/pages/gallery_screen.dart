import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:too_see/pages/photos_pages.dart';
import 'package:too_see/pages/provider/language.dart';
import 'package:too_see/pages/scroll_page.dart';


class Gallery extends StatefulWidget {
   Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
Language _language = Language();

  @override
  void initState(){
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
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ScrollPage();
                        },),);
                      },
        child: Column(
          
          children: [
          
            SizedBox(
                    height: 248,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66),
              child: Image(image: AssetImage("images/gallery.png"),
              ),
            ),
            SizedBox(
                    height: 28,
                  ),
            Text(_language.tGallery(), style: TextStyle(fontSize: 30, fontFamily: 'cairo-Bold', 
            color: Color(0xff052159)),
            ),
            SizedBox(
                    height: 45,
                  ),
          ],
        ),
      )
    );
  }
}
