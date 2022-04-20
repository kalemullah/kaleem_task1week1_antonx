import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final onPressed;
  final color;
  final buttomcolor;
  const BottomButton(
      {required this.text, this.onPressed, this.color, this.buttomcolor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 70.h,
          width: 320.w,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color:whiteColor),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: buttomcolor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400),
              )),
        ));
  }
}
