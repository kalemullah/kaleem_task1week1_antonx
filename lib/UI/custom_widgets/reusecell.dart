import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';
import '../screens/sell_screen.dart';

class ReUsedCell extends StatelessWidget {
  final String? text;
  final onPressed;
  final showimage;
  final titletext;
  final discrinptiontext;
  final icon;
  final cardwidth;

  const ReUsedCell(
      {this.text,
      this.onPressed,
      this.showimage,
      this.titletext,
      this.cardwidth,
      this.discrinptiontext,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onPressed),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: Container(
          width: cardwidth,
          child: Column(
            children: [
              SizedBox(
                width: cardwidth,
                height: 150.r,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      showimage,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                width: cardwidth,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        titletext,
                        style: TextStyle(color: blackColor, fontSize: 18.sp),
                      ),
                    ),
                    SizedBox(
                      width: 55.w,
                    ),
                    Icon(icon),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: cardwidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [const Icon(Icons.location_on), Text(discrinptiontext)],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 2,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondReUseCell extends StatelessWidget {
  final onpressed;
  final showimage;
  final  text1;
  final  text2;
  final  text3;

  SecondReUseCell({
    this.onpressed,
    this.showimage,
    this.text1,
    this.text2,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onpressed),
        );
      },
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.all(8.r),
            child: SizedBox(
              width: 165.r,
              height: 200.r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 190.w,
                  fit: BoxFit.cover,
                  image:  AssetImage(
                    showimage,
                  ),
                ),
                //showimage,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children:  [
                  Text(text1,),

                  SizedBox(
                    width: 70.h,
                  ),
                  const Icon(Icons.book)
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                text2,
                style: TextStyle(
                  color: buttonColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:  EdgeInsets.only(right: 30.w),
                child: Row(
                  children:  [
                    const Icon(Icons.location_on),
                    Text(text3)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
