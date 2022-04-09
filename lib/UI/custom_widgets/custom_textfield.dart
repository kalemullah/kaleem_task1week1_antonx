
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';
class CustomTextField extends StatelessWidget {
  final String text;
  bool? obscr;
  var onSubmmite;

  CustomTextField({required this.text, this.obscr, this.onSubmmite});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: 320.w,
      height: 75.h,
      child: TextField(
        cursorColor: blackColor,
        onChanged: onSubmmite,
        obscureText: obscr!,
        decoration: InputDecoration(
         // contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: Colors.black),
          ),
          hintText: text,
          hintStyle: const TextStyle(
            color: blackColor,
          ),
          contentPadding: EdgeInsets.only(left: 20.w,top: 50),
        ),
      ),
    );
  }
}