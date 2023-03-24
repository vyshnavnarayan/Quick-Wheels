// ignore_for_file: lines_longer_than_80_chars, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:quick_wheels/homepage/view/homepage.dart';
import 'package:quick_wheels/myAccount/view/myAccountPage.dart';
import 'package:quick_wheels/myBookings/view/myBookingPage.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    MyBookings(),
    MyAccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: lines_longer_than_80_chars
        
        body: Center(
          child: pages[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedFontSize: 14,
          selectedItemColor: const Color.fromARGB(255, 10, 1, 1),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          selectedIconTheme: const IconThemeData(size: 25),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'My Bookings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
