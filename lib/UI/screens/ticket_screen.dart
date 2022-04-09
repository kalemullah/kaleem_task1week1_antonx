import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';
import '../custom_widgets/reusecell.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(90),
              constraints: const BoxConstraints.expand(
                width: 365,
                height: 270,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mag1.png'),
                  fit: BoxFit.cover,
                ),
                // 7
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 180.h),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        'POLIN MUESUM',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 120.w,
                      ),
                      const Icon(Icons.location_on)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'this muesumis 10000 year old thier is a lot of jiwesh historical elements',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 55,
                      decoration: BoxDecoration(
                        color: grayColor,
                        border: Border.all(color: whiteColor),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      child: const Icon(Icons.location_on),
                    ),
                    SizedBox(width: 80.w,),
                    Column(
                      children: [
                        Text('Aniewlo',style: TextStyle(
                          color: blackColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                        Text('Aniewlo',style: TextStyle(
                          color: lightBlackColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 55,
                      decoration: BoxDecoration(
                        color: grayColor,
                        border: Border.all(color: whiteColor),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      child: const Icon(Icons.atm),
                    ),
                    SizedBox(width: 80.w,),
                    Column(
                      children: [
                        Text('Aniewlo',style: TextStyle(
                          color: blackColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                        Text('9am--6pm',style: TextStyle(
                          color: lightBlackColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    )
                  ],
                ),
                Text('News',style: TextStyle(
                  color: buttonColor,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w800,
                ),),
                const SecondReUseCell(),
                const SecondReUseCell(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
