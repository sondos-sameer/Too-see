import 'package:flutter/material.dart';
import 'package:too_see/pages/sightChat_page.dart';
import 'package:too_see/widgets/chatUser.dart';




class chatPeople extends StatelessWidget {
  const chatPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xffC4EEF2),
      child: Container(
        margin: const EdgeInsets.only(top: 59),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xff699EBF),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chat',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'cairo-Bold',
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },child: Image(image: AssetImage("icons/back-white.png"))),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 59),
              color: Colors.white,
               child: GestureDetector(
                onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                              return sightChat();
                          },),);
                        },
                 child: ListView.builder(
                  itemBuilder: ((context, index) {
                   return  const chatUser();
                   
                 }),),
               )
           
            ),
          ],
        ),
      ),
    ));
  }
}
