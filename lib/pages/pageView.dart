import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:too_see/pages/chat_screen.dart';
import 'package:too_see/pages/gallery_screen.dart';
import 'package:too_see/pages/gps_screen.dart';


class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  // declare and initizlize the page controller
  final _pageController = PageController();

 String userName ='user name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SizedBox(
        height: 680,
        child: Drawer(width: 240,child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17,top: 60),
                  child: CircleAvatar(
                          radius: 44,
                          backgroundColor: Color(0xffC4EEF2),
                          
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 12),
                  child: Text(userName,style: TextStyle(
                          fontFamily: 'cairo-Bold',
                          fontSize: 20,
                          color: Color(0xff052159),
                        ),),
                )
              ],
            ),
            SizedBox(
                    height: 50,
                  ),
            ListTile(
              leading: Image(image: AssetImage("icons/gender.png"),width:40,height: 40,),
              title: Text('Gender of voice',style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo-Bold',
                color: Color(0xff052159),
              ),),
            ),
            SizedBox(
                    height: 84,
                  ),
            ListTile(
              leading: Image(image: AssetImage("icons/language.png"),width:40,height: 40,),
              title: Text('language',style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo-Bold',
                color: Color(0xff052159),
              ),),
            ),
            SizedBox(
                    height: 84,
                  ),
            ListTile(
              leading: Image(image: AssetImage("icons/log-out.png"),width:40,height: 40,),
              title: Text('sign out',style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo-Bold',
                color: Color(0xff052159),
              ),),
            )
          ],
        ),),
      ),
      body: Stack(
        children: [
          
          PageView(
            controller: _pageController,
            children: [const Gallery(), const GpsScreen(), const ChatScreen()],
          ),
          //creat  app bar
           Positioned(
            top: 70,
            left: 0,
            right: 0,
            height: 30,
             child: Container(
               child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:22),
                    child: Text(
                          'TO SEE',
                           style: TextStyle(
                           color: Color(0xff052159),
                           fontFamily: 'TypoGraphica',
                           fontSize: 20,
                    ),),
                  ),
                  Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Builder(
                      builder: (context) => IconButton(
                          icon: Icon(Icons.menu, color: Colors.black,),
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                        )
                    )),
                ),),
                ],
                     
                   
               ),
             ),
           ),

           //creat a indictor dots and position it
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: SwapEffect(
                      activeDotColor: Color(0xff91B3FA),
                      dotColor: Color(0xffCCCCCC),
                      radius: 14,
                      spacing: 28,
                    ),
                    onDotClicked: (index) =>
                        _pageController.animateToPage(index,
                            duration: Duration(
                              milliseconds: 500,
                            ),
                            curve: Curves.decelerate),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffFEFEFE),
      //   elevation: 0,
      //   title: Text('TO SEE',style: TextStyle(

      //                  color: Color(0xff052159),
      //                  fontFamily: 'TypoGraphica',
      //                  fontSize: 20,
      //           ),),
      //   actions: [
      //     Padding(
      //           padding: EdgeInsets.symmetric(horizontal: 10),
      //           child: Builder(
      //             builder: (context) => IconButton(
      //                 icon: Icon(Icons.menu, color: Colors.black,),
      //                 onPressed: () => Scaffold.of(context).openEndDrawer(),
      //               )
      //           )
      //         ),],
      // ),

    
    );
  }
}
