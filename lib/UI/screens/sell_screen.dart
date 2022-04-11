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
        body: Container(
          height: 1.sh,
          child: Stack(
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
                ),
              ),
              Positioned(
                top: 250,
                child: Container(
                  height: 600.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                  padding: EdgeInsets.only(left: 20.w, right: 10.w,top: 35.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'POLIN MUESUM',
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 130.w,
                          ),
                          CustomButton(icon: Icons.location_on,width: 40.w,height: 40.h,),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                        'this museum is 10000 year old thier'
                            ' is a lot of jiwesh historical elements.'
                            'this museum is 10000 year old thier'
                            ' is a lot of jiwesh historical.....',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Row(
                        children: [
                          CustomButton(icon: Icons.location_on,width: 50.w,height: 50.h,),
                          SizedBox(
                            width: 40.w,
                          ),
                          Column(
                            children: [
                              Text(
                                'Aniewlo',
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Aniewlo',
                                style: TextStyle(
                                  color: lightBlackColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          CustomButton(icon: Icons.book,width: 50.w,height: 50.h,),
                          SizedBox(
                            width: 40.w,
                          ),
                          Column(
                            children: [
                              Text(
                                'Aniewlo',
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '9am--6pm',
                                style: TextStyle(
                                  color: lightBlackColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'News',
                        style: TextStyle(
                          color: buttonColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      ReUsedCell(
                        onPressed: TicketScreen(),
                        showimage: 'assets/mag2.png',
                        cardwidth: 350.w,
                        titletext: 'Iron Deficit',
                        discrinptiontext: 'lamka 4800-3244',
                        icon: Icons.book,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final icon;
  final width;
  final height;
  const CustomButton({
    this.icon,this.width,this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 2,
          )
        ],
        color: whiteColor,
        border: Border.all(color: whiteColor),
        borderRadius:
        BorderRadius.all(Radius.circular(10.r)),
      ),
      child:  Icon(icon),
    );
  }
}
