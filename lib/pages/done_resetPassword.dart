import 'package:flutter/material.dart';
import 'package:too_see/widgets/button.dart';


import '../widgets/textfield.dart';

class doneReset extends StatelessWidget {
  const doneReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Image(
                      image: AssetImage("images/shape.png"),
                    ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage("images/scroll.png"),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 45,right: 45,bottom: 30,top: 20),
                  child: button(text: 'Go to home page',),
                ),
              ],
            ),
          ),
      ),
    );
  }
}