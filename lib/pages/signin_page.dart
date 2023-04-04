import 'package:flutter/material.dart';
import 'package:too_see/pages/forgot_password.dart';
import 'package:too_see/widgets/checkBox.dart';
import '../widgets/button.dart';
import '../widgets/textfield.dart';
import 'package:too_see/pages/signup_page.dart';

class signinPage extends StatelessWidget {
  signinPage({super.key});

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xffC4EEF2),
                Color(0xffEAF9FB),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 192, 191, 191),
                blurRadius: 15.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 5  horizontally
                  15.0, // Move to bottom 5 Vertically
                ),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.2),
            child: Column(
              children: [
                SizedBox(
                  height: 16.45,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: Color(0xffF2F4F8),
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 45,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.45,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'proxima-nova',
                    fontSize: 29,
                  ),
                ),
                SizedBox(
                  height: 19.5,
                ),
                Row(
                  children: [
                    Text(
                      'New user?',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'proxima-nova'),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return signupPage();
                        },),);
                      },
                      child: Text(
                        '   Create an account',
                        style: TextStyle(
                            color: Color(0xff16558C),
                            fontSize: 18,
                            fontFamily: 'NotoSans-semiBold'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                textfield(
                  hintText: 'Username or email',
                ),
                SizedBox(
                  height: 18.8,
                ),
                textfield(
                  hintText: 'Password',
                ),
                SizedBox(
                  height: 34,
                ),
                checkBox(),
                SizedBox(
                  height: 28,
                ),
                button(text: 'Sign in',),
                GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ForgotPassword();
                        },),);
                      },
                  child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontFamily: 'Notosans-Bold',
                          fontSize: 14,
                        ),),
                ),
                SizedBox(
                  height: 37.6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            color: Color(0xffCFCFCF),
                            height: 36,
                          )),
                    ),
                    Text(
                      "Or Sign In With",
                      style: TextStyle(
                        fontFamily: 'Notosans-Bold',
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Color(0xffCFCFCF),
                          height: 36,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [                    
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Container(
                          height: 25,
                          width: 25,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: new AssetImage("icons/google.jpg"),
                            fit: BoxFit.fill,
                          ),),),
                    ),
                    
                    SizedBox(
                      width: 18,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Container(
                          height: 25,
                          width: 25,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: new AssetImage("icons/facebook.jpg"),
                            fit: BoxFit.fill,
                          ))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
