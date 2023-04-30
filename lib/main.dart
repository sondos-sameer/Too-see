import 'package:flutter/material.dart';

import 'package:too_see/pages/blindChat_page.dart';
import 'package:too_see/pages/chatPeople_page.dart';
import 'package:too_see/pages/pageView.dart';
import 'package:too_see/pages/recognize_pages/endRecognize_screen.dart';
import 'package:too_see/pages/recognize_pages/frontFace_screen.dart';
import 'package:too_see/pages/recognize_pages/recognize_screen.dart';
import 'package:too_see/pages/sightChat_page.dart';
import 'package:too_see/pages/voice_pages/hear_sound.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:too_see/pages/voice_pages/voice_page1.dart';
import 'package:too_see/pages/welcome_page.dart';


String? language ='EN';

 void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance()..then((instance) {
    language = instance.getString('language');
    runApp(tooSee());
  });
  
  
}

class tooSee extends StatelessWidget {
  const tooSee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: voice_page1(),
    );
  }
}