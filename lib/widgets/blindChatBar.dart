import 'package:flutter/material.dart';
import 'package:too_see/pages/vedioCall_page.dart';
import 'package:too_see/widgets/chatOption.dart';

import '../pages/provider/language.dart';

class blindChatBar extends StatelessWidget {
   blindChatBar({super.key});
  Language _language = Language();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
                        
                        height: 100,
                        color: Color(0xff699EBF),
                        child: Row(
                          
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(),
                              chatOption(
                                icon: Icons.keyboard_voice_outlined,
                                optionName: _language.tRecorde(),
                              ),
                              Spacer(),
                              chatOption(
                                icon: Icons.location_on_outlined,
                                optionName: _language.tlocation(),
                              ),
                              Spacer(),
                              chatOption(
                                icon: Icons.image_outlined,
                                optionName: _language.tGallery(),
                              ),
                              Spacer(),
                              GestureDetector(
              onTap: (){
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return vedioCall();
                        },),);
                      },
                                child: chatOption(
                                  icon: Icons.videocam_outlined,
                                  optionName: _language.tVedio(),
                                ),
                              ),
                              Spacer(),
                            ]),
                      ),
    );
  }
}