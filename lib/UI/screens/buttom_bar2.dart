import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1task/UI/custom_widgets/reusecell.dart';
import 'package:week1task/UI/custom_widgets/tab_bar.dart';
import 'package:week1task/UI/screens/sell_screen.dart';

import '../../core/colors.dart';
import 'sell_screen.dart';

class BottomBar2 extends StatelessWidget {
  const BottomBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,right: 5),
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
          SizedBox(
            height: 510,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
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
                ReUsedCell(
                  onPressed: TicketScreen(),
                  showimage: 'assets/mag4.png',
                  cardwidth: 350.w,
                  titletext: 'Iron Deficit',
                  discrinptiontext: 'lamka 4800-3244',
                  icon: Icons.book,
                ),
                ReUsedCell(
                  onPressed: TicketScreen(),
                  showimage: 'assets/mag5.png',
                  cardwidth: 350.w,
                  titletext: 'Iron Deficit',
                  discrinptiontext: 'lamka 4800-3244',
                  icon: Icons.book,
                ),
                ReUsedCell(
                  onPressed: TicketScreen(),
                  showimage: 'assets/mag1.png',
                  cardwidth: 350.w,
                  titletext: 'Iron Deficit',
                  discrinptiontext: 'lamka 4800-3244',
                  icon: Icons.book,
                ),
                ReUsedCell(
                  onPressed: TicketScreen(),
                  showimage: 'assets/mag1.png',
                  cardwidth: 350.w,
                  titletext: 'Iron Deficit',
                  discrinptiontext: 'lamka 4800-3244',
                  icon: Icons.book,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}