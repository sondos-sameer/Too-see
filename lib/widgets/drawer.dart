import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:too_see/main.dart';
import 'package:too_see/pages/provider/language.dart';
import 'package:too_see/widgets/popUpMenu.dart';

class mydrawer extends StatefulWidget {
  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  Language _language = Language();
  List<String>? _languages = ['AR', 'EN'];
  String? _selectedLang='EN';
  String userName = 'user name';
  @override
  void initState(){
    super.initState();
    setState(() {
      _language.getLanguage();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 240,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 60),
                child: CircleAvatar(
                  radius: 44,
                  backgroundColor: Color(0xffC4EEF2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 12),
                child: Text(
                  userName,
                  style: TextStyle(
                    fontFamily: 'cairo-Bold',
                    fontSize: 20,
                    color: Color(0xff052159),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Image(
              image: AssetImage("icons/gender.png"),
              width: 40,
              height: 40,
            ),
            title: Text(
             _language.tGender() ,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo-Bold',
                color: Color(0xff052159),
              ),
            ),
            trailing: PopUpMen(
              menuList: const [
                PopupMenuItem(
                  child: ListTile(
                    title: Text(
                      "Male",
                      style: TextStyle(
                        color: Color(0xff16558C),
                        fontFamily: 'cairo-Bold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text(
                      "Female",
                      style: TextStyle(
                        color: Color(0xff16558C),
                        fontFamily: 'cairo-Bold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 84,
          ),
          ListTile(
              leading: Image(
                image: AssetImage("icons/language.png"),
                width: 40,
                height: 40,
              ),
              title: Text(
                _language.tlang() ,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'cairo-Bold',
                  color: Color(0xff052159),
                ),
              ),
              trailing: DropdownButton(
                focusColor: Colors.white,
                underline: SizedBox(),
                dropdownColor: Color(0xffE0F0FA),
                items: _languages!.map((lang) {
                  return DropdownMenuItem(
                    child: new Text(lang),
                    value: lang,
                  );
                }).toList(),
                onChanged: (newValue)async {
                  SharedPreferences pref = await SharedPreferences.getInstance();
                  pref.setString('language',newValue!);
                  _language.setLanguage(newValue);
                  language= newValue;
                  setState(() {
                    _selectedLang = newValue;
                  });
                },
                value: _selectedLang,
              )
              // PopUpMen(
              //   menuList: const [
              //     PopupMenuItem(
              //       child: ListTile(
              //         title: Text(
              //           "Arabic",
              //           style: TextStyle(
              //             color: Color(0xff16558C),
              //             fontFamily: 'cairo-Bold',
              //             fontSize: 14,
              //           ),
              //         ),
              //       ),
              //     ),
              //     PopupMenuItem(
              //       child: ListTile(
              //         title: Text(
              //           "English",
              //           style: TextStyle(
              //             color: Color(0xff16558C),
              //             fontFamily: 'cairo-Bold',
              //             fontSize: 14,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              ),
          SizedBox(
            height: 84,
          ),
          ListTile(
            leading: Image(
              image: AssetImage("icons/log-out.png"),
              width: 40,
              height: 40,
            ),
            title: Text(
              _language.tsignout(),
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'cairo-Bold',
                color: Color(0xff052159),
              ),
            ),
          )
        ],
      ),
    );
  }
}
