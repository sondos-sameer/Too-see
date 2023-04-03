import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class button extends StatelessWidget {
   button({this.text});
   String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 56.39,
                    child: Center(
                      child: Text(
                        text!,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Notosans-semiBold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff16558C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  );
  }
}