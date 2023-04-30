import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class imageBubble extends StatelessWidget {
   imageBubble(this.path);
  String? path;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        
        Align(
          alignment: Alignment.centerRight,
          child: Padding(padding: EdgeInsets.symmetric(horizontal:5,vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff699EBF)
            ),
            child: Card(
              margin: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
            child: FullScreenWidget(
              child: ClipRRect( borderRadius: BorderRadius.circular(30),
                child: Image(image: AssetImage(path!),fit: BoxFit.cover,)),
            )
            ),
          ),),
          
        ),
        Padding(
          padding: const EdgeInsets.only(right:10),
          child: CircleAvatar(
            radius: 25,
            child: Icon(CupertinoIcons.person),
            backgroundColor: Color(0xff699EBF),
          ),
        ),
      ],
    );
  }
}


class imgBubbleForFriend extends StatelessWidget {
   imgBubbleForFriend(this.path);
  String? path;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CircleAvatar(
            radius: 25,
            child: Icon(CupertinoIcons.person),
            backgroundColor: Color(0xffC4EEF2),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal:5,vertical: 10),
        child: Container(
          height: MediaQuery.of(context).size.height/4,
          width: MediaQuery.of(context).size.width/2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffC4EEF2)
          ),
          child: Card(
            margin: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: FullScreenWidget(
              child: ClipRRect( borderRadius: BorderRadius.circular(30),
                child: Image(image: AssetImage(path!),fit: BoxFit.cover,)),
            )

          ),
        ),),
       
        
      ],
    );
  }
}