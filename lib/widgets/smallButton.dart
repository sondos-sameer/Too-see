import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class smallButton extends StatelessWidget {
   smallButton({this.text});

String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 111,
                      width: 217,
                      child: Center(
                        child: Text(
                          text!,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'cairo-Bold',
                            fontSize: 39,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff052159),
                        borderRadius: BorderRadius.circular(42),
                      ),
                    );
  }
}