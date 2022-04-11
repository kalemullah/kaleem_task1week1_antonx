import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../core/colors.dart';
import 'bottom_bar1.dart';
import 'buttom_bar2.dart';


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
    const  BottomBar1(),
    const BottomBar2(),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: pages[_selectedIndex],
        ),


        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
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






