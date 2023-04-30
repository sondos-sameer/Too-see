import 'package:flutter/material.dart';

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Color(0xffE0F0FA),
      itemBuilder: ((context) => menuList),
      
    );
  }
}