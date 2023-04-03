
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class chatOption extends StatelessWidget {
   chatOption({this.icon,this.optionName});

IconData? icon;
String? optionName;

  @override
  Widget build(BuildContext context) {
    return Column(
     children:[ 
      Padding(
        padding: const EdgeInsets.only(top:8),
        child: CircleAvatar(
                            radius: 30,
                            child: Icon(icon,size: 30,),
                            backgroundColor: Colors.white,),
      ),

                          Text(optionName!,style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Notosans-semiBold',
                          ),),

    ]);
  }
}