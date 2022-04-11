import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1task/UI/custom_widgets/reusecell.dart';

import '../../core/colors.dart';
import 'sell_screen.dart';

class BottomBar1 extends StatelessWidget {
  const BottomBar1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //this first row of the screen
        Padding(
          padding: EdgeInsets.only(
            top: 20.h,
          ),
          child: Row(
            children: [
              const Expanded(child: Icon(Icons.location_on)),
              Text(
                'Warszawa',
                style: TextStyle(
                  color: lightBlackColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Expanded(child: Icon(Icons.keyboard_arrow_down)),
              SizedBox(
                width: 70.w,
              ),
              const Expanded(child: Icon(Icons.book)),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        //this is search bar
        SizedBox(
          height: 530.h,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(color: whiteColor),
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: TextField(
                  cursorColor: blackColor,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: blackColor,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: whiteColor),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: blackColor,
                    ),
                    contentPadding: EdgeInsets.only(left: 20.w, top: 16.h),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'ToP Visited',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170.h,
                    ),
                    const Expanded(child: Text('View all'))
                  ],
                ),
              ),
              Container(
                color: whiteColor,
                height: 220,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                     ReUsedCell(
                      onPressed: TicketScreen(),
                      showimage: 'assets/mag1.png',
                      cardwidth: 250.w,
                      titletext: 'Iron Deficit',
                       discrinptiontext: 'lamka 4800-3244',
                       icon: Icons.book,
                    ), ReUsedCell(
                      onPressed: TicketScreen(),
                      showimage: 'assets/mag1.png',
                      cardwidth: 250.w,
                      titletext: 'Iron Deficit',
                      discrinptiontext: 'lamka 4800-3244',
                      icon: Icons.book,
                    ),
                    ReUsedCell(
                      onPressed: TicketScreen(),
                      showimage: 'assets/mag1.png',
                      cardwidth: 250.w,
                      titletext: 'Iron Deficit',
                      discrinptiontext: 'lamka 4800-3244',
                      icon: Icons.book,
                    ),
                    ReUsedCell(
                      onPressed: TicketScreen(),
                      showimage: 'assets/mag1.png',
                      cardwidth: 250.w,
                      titletext: 'Iron Deficit',
                      discrinptiontext: 'lamka 4800-3244',
                      icon: Icons.book,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 25.h),
                child: Text(
                  'NEWs and Exibition',
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SecondReUseCell(
                onpressed: const TicketScreen(),
                showimage:'assets/mag1.png',
                text1: 'Iron Deficit',
                text2: 'This is \nBold Text',
                text3: 'This is 4334-443-33',
              ),
              SecondReUseCell(
                onpressed: const TicketScreen(),
                showimage:'assets/mag1.png',
                text1: 'Iron Deficit',
                text2: 'This is \nBold Text',
                text3: 'This is 4334-443-33',
              ),
              SecondReUseCell(
                onpressed: const TicketScreen(),
                showimage:'assets/mag1.png',
                text1: 'Iron Deficit',
                text2: 'This is \nBold Text',
                text3: 'This is 4334-443-33',
              ),

            ],
          ),
        )
      ],
    );
  }
}