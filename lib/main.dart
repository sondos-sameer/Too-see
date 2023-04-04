import 'package:flutter/material.dart';
import 'package:too_see/pages/Verify-email.dart';
import 'package:too_see/pages/done_resetPassword.dart';
import 'package:too_see/pages/forgot_password.dart';
import 'package:too_see/pages/pageView.dart';
import 'package:too_see/pages/reset_password.dart';






 void main() {
  runApp(tooSee());
}

class tooSee extends StatelessWidget {
  const tooSee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: doneReset(),
    );
  }
}