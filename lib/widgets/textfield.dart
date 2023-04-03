import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  textfield({this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
         border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none, ),),
        hintText: hintText,
        filled: true,
        fillColor: Color(0xffF2F4F8),
        hintStyle: TextStyle(
          color: Color(0xff1C2126),
          fontFamily: 'Notosans-semiBold',
          fontSize: 15,
        )
      ),
    );
  }
}
