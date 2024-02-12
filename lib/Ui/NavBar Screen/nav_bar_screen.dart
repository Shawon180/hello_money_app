import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Const/const.dart';
import '../History Screen/history_screen.dart';
import '../HomeScreen/home_screen.dart';
import '../Payout/payout_screen.dart';


class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({Key? key}) : super(key: key);

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {


  int _currentIndex=0;
  final _pages=[
    const HomeScreen(),
    const PayoutScreen(),
    const HistoryScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xff1B4375),
        fixedColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor,

        items: const [
          BottomNavigationBarItem(

              icon: Icon(Icons.home),label: 'Home',),

          BottomNavigationBarItem(icon: Icon(Icons.payment_outlined),label: 'Payout'),

          BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History'),



        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}