import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1task/UI/custom_widgets/reusecell.dart';
import 'package:week1task/UI/custom_widgets/topviewtext.dart';

import '../../core/colors.dart';
import '../screens/ticket_screen.dart';

class ButtomBar2 extends StatelessWidget {
  const ButtomBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Museums',
                  style: TextStyle(
                    color: lightBlackColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                ),
                const Expanded(child: Icon(Icons.book)),
              ],
            ),
            Container(
              height: 510,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:  [
                          TopViewText(text: 'Top View',onpressed: (){},textColor: Colors.indigo,),
                          TopViewText(text: 'Top View',onpressed: (){},textColor: Colors.grey,),
                          TopViewText(text: 'Top View',onpressed: (){},textColor: Colors.deepPurpleAccent,),
                          TopViewText(text: 'Top View',onpressed: (){},textColor: Colors.blueGrey,),
                          TopViewText(text: 'Top View',onpressed: (){},textColor: Colors.green,),
                        ],
                      ),
                    ),
                  ),
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
                    width: 350.0,
                    cardtext: Text(
                      'Iron Deficit',
                      style: TextStyle(color: blackColor, fontSize: 18.sp),
                    ),
                  ),
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
                    width: 350.0,
                    cardtext: Text(
                      'Iron Deficit',
                      style: TextStyle(color: blackColor, fontSize: 18.sp),
                    ),
                  ),
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
                    width: 350.0,
                    cardtext: Text(
                      'Iron Deficit',
                      style: TextStyle(color: blackColor, fontSize: 18.sp),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}