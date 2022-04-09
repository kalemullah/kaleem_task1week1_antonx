import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1task/UI/custom_widgets/reusecell.dart';

import '../../core/colors.dart';
import '../screens/ticket_screen.dart';

class buttomBar1 extends StatelessWidget {
  const buttomBar1({
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
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: whiteColor),
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  // width: 300.w,
                  // height: 55.h,
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
                      width: 190,
                    ),
                    Expanded(child: Text('View all'))
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
                    Reusedcell(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TicketScreen()));
                      },
                      showimage: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/mag1.png',
                        ),
                      ),
                      width: 250.0,
                      cardtext: Text(
                        'Iron Deficit',
                        style: TextStyle(color: blackColor, fontSize: 18.sp),
                      ),
                    ),
                    Reusedcell(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => IronDeficit()));
                      },
                      showimage: Image(
                        width: 190.w,
                        fit: BoxFit.cover,
                        image: const AssetImage(
                          'assets/mag2.png',
                        ),
                      ),
                      cardtext: Text(
                        'Iron Deficit',
                        style: TextStyle(color: blackColor, fontSize: 18.sp),
                      ),
                    ),
                    Reusedcell(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => IronDeficit()));
                      },
                      showimage: Image(
                        width: 190.w,
                        fit: BoxFit.cover,
                        image: const AssetImage(
                          'assets/mag4.png',
                        ),
                      ),
                      cardtext: Text(
                        'Iron Deficit',
                        style: TextStyle(color: blackColor, fontSize: 18.sp),
                      ),
                    ),
                    Reusedcell(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => IronDeficit()));
                      },
                      showimage: Image(
                        width: 190.w,
                        fit: BoxFit.cover,
                        image: const AssetImage(
                          'assets/mag5.png',
                        ),
                      ),
                      cardtext: Text(
                        'Iron Deficit',
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),
                    ),
                    Reusedcell(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => IronDeficit()));
                      },
                      showimage: Image(
                        width: 190.w,
                        fit: BoxFit.cover,
                        image: const AssetImage(
                          'assets/mag1.png',
                        ),
                      ),
                      cardtext: Text(
                        'Iron Deficit',
                        style: TextStyle(color: blackColor, fontSize: 18.sp),
                      ),
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
                onpressed: () {},
                showimage: Image(
                  width: 190.w,
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/mag1.png',
                  ),
                ),
                text1: const Text(
                  'Iron Deficit',
                ),
                text2: const Text(
                  'Iron Deficit',
                ),
                text3: const Text(
                  'Iron Deficit',
                ),
              ),
              SecondReUseCell(
                onpressed: () {},
                showimage: Image(
                  width: 190.w,
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/mag1.png',
                  ),
                ),
                text1: const Text(
                  'Iron Deficit',
                ),
                text2: const Text(
                  'Iron Deficit',
                ),
                text3: const Text(
                  'Iron Deficit',
                ),
              ),
              SecondReUseCell(
                onpressed: () {},
                showimage: Image(
                  width: 190.w,
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/mag1.png',
                  ),
                ),
                text1: const Text(
                  'Iron Deficit',
                ),
                text2: const Text(
                  'Iron Deficit',
                ),
                text3: const Text(
                  'Iron Deficit',
                ),
              ),
              SecondReUseCell(
                onpressed: () {},
                showimage: Image(
                  width: 190.w,
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/mag1.png',
                  ),
                ),
                text1: const Text(
                  'Iron Deficit',
                ),
                text2: const Text(
                  'Iron Deficit',
                ),
                text3: const Text(
                  'Iron Deficit',
                ),
              ),
              SecondReUseCell(
                onpressed: () {},
                showimage: Image(
                  width: 190.w,
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/mag1.png',
                  ),
                ),
                text1: const Text(
                  'Iron Deficit',
                ),
                text2: const Text(
                  'Iron Deficit',
                ),
                text3: const Text(
                  'Iron Deficit',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}