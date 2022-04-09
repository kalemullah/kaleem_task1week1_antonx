import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';
class Reusedcell extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Image? showimage;
  final Widget? cardtext;
  final width;

  Reusedcell({this.text, this.onPressed, this.showimage, this.cardtext,this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: Column(
            children: [
              Container(
                width: width,
                height: 150.r,
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:  showimage,
                  ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Container(child: cardtext),
                  SizedBox(width: 75.w,),
                  Icon(Icons.book)
                ],
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(right: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on),
                    Text('Lamka 4900-553')
                  ],
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
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

        ),
      ),
    );
  }
}



class SecondReUseCell extends StatelessWidget {
  final VoidCallback?onpressed;
  final Image?showimage;
  final Widget? text1;
  final Widget? text2;
  final Widget? text3;

  const SecondReUseCell({this.onpressed,this.showimage,this.text1,this.text2,this.text3,}) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 170.r,
            height: 200.r,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 190.w,
                fit: BoxFit.cover,
                image: const AssetImage('assets/mag1.png',),
              ),
              //showimage,
            ),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Text('02,March,2020'),
                SizedBox(width: 60,),
                Icon(Icons.book)
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.only(right: 65.0),
              child: Text('this is  a\n Bold text',style: TextStyle(
                color: buttonColor,
                fontSize: 22.sp,
                fontWeight: FontWeight.w800,
              ),),
            ),
            SizedBox(height: 65.h,),
           Padding(
             padding: const EdgeInsets.only(right: 30.0),
             child: Row(
               children: [
                 Icon(Icons.location_on),
                 Text('this is 445446544')
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














