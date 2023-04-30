import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class audioCallBar extends StatelessWidget {
  const audioCallBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                     
                      SizedBox(
                        width: 70,height: 70,
                        child: TextButton(onPressed: () {}, child: SvgPicture.asset('icons/callIcon.svg'),)),
                      Spacer(),
                      
                      SizedBox(width: 70,height: 70,
                        child: TextButton(onPressed: () {}, child: SvgPicture.asset('icons/soundIcon.svg'),)),
                      Spacer(),
                    ],
                  );
  }
}