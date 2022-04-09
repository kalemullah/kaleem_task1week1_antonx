import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1task/UI/screens/ticket_screen.dart';

import '../../core/colors.dart';
import '../custom_widgets/buttombar1.dart';
import '../custom_widgets/buttombar2.dart';
import '../custom_widgets/custom_textfield.dart';
import '../custom_widgets/reusecell.dart';
import '../custom_widgets/topviewtext.dart';

class WarsZaWaScreen extends StatefulWidget {
  const WarsZaWaScreen({Key? key}) : super(key: key);

  @override
  _WarsZaWaScreenState createState() => _WarsZaWaScreenState();
}

class _WarsZaWaScreenState extends State<WarsZaWaScreen> {
  @override
  // 7
  int _selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[
    const  buttomBar1(),
    const ButtomBar2(),
    // TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
      if (_selectedIndex == 1) {}
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: pages[_selectedIndex],
        // 4
        // 4
        bottomNavigationBar: BottomNavigationBar(
          // 5
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          // 10
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3',
            ),
          ],
        ),
      ),
    );
  }
}






