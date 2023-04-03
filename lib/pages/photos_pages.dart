import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {

  var TextList = ['Tree','Cat','Car'];
  var picList =['images/tree-example.jpg','images/car-example.jfif','images/cat-example.jfif',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffC4EEF2),
        child: Container(
          margin: const EdgeInsets.only(top: 59),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
          color: Color(0xffFFFFFF),),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                           Text(
                            
                            'Gallery',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'cairo-Bold',
                              color: Color(0xff16558C),
                            ),
                          ),
                        
                          Spacer(),
                           GestureDetector(
                            onTap: (){
                        Navigator.pop(context);
                      },
                            child: Image(image: AssetImage("icons/back-button.png"))),
                        
                      ],
                    ),),
                   Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: CarouselSlider(
            options: CarouselOptions(height:  400,
            enlargeCenterPage: true,
            ),
            items: ['images/cat-example.jfif','images/tree-example.jpg','images/car-example.jfif'].map((i) {
              return Builder(
              builder : (BuildContext context) {
                return Container(
                width: MediaQuery.of(context).size.width,
                margin : EdgeInsets.symmetric(horizontal: 5),

                  child: Column(
                    children: [
                      Image.asset(i,width: 300,height: 150,),
                      SizedBox( height:  10,),
                      if(i == 'images/tree-example.jpg')
                        Text(TextList[0], style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      if(i == 'images/cat-example.jfif')
                        Text(TextList[1], style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      if(i == 'images/car-example.jfif')
                        Text(TextList[2], style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      
                    ],
                  ),

                );
          }
              );
          }).toList(),

          ),
        ),),

            //   Padding(
            //     padding: const EdgeInsets.only(top: 155,left: 50,right: 50),
            //     child: Image(image: AssetImage('images/tree.jpg'),),
            //   ),
            //   Text(
            //   'Tree',
            //   style: TextStyle(fontSize: 50, 
            //   fontFamily: 'cairo-Bold',
            //   color: Color(0xff052159),),
            // ),
            ],
          ),

        ),
      ),
    );
  }
}