import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class locationUser extends StatefulWidget {
  const locationUser({super.key});

  @override
  State<locationUser> createState() => _locationUserState();
}

class _locationUserState extends State<locationUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffF2F4F8),),
        //user name
        Text('User',style: TextStyle(
          fontSize: 20,
                          fontFamily: 'cairo-Bold',
                          color: Colors.white,
        ),),
        
      ],
    );
  }
}