import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orchid_app/ui/style/app_color.dart';

import '../../pages/HomePage/calender_page.dart';
import '../../pages/HomePage/home_page/home_page.dart';
import '../../pages/HomePage/home_page/request_page_pe.dart';
import '../../pages/add_request_pages/request_page.dart';

class Homelayout extends StatefulWidget {
  Homelayout({Key? key}) : super(key: key);

  @override
  State<Homelayout> createState() => _HomelayoutState();
}

class _HomelayoutState extends State<Homelayout> {
  int currentin = 0;
  List pages = [
    HomePageO(),
    RequestPagep(),
    CalPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(backgroundColor: ColorPattren.backGroundColor,width: 250,child: Column(children: [],)),
      appBar: AppBar(
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: ColorPattren.darkAccentBlue,
                child: Icon(Icons.person)),
          ),],
          backgroundColor: ColorPattren.backGroundColor,
          elevation: 0),
      body: SingleChildScrollView(child: pages[currentin]),
      backgroundColor: ColorPattren.backGroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentin = index;
            });
          },
          currentIndex: currentin,
          selectedIconTheme:
              IconThemeData(color: ColorPattren.backGroundColor, size: 30),
          selectedFontSize: 18,
          unselectedItemColor: Colors.grey[500],
          selectedItemColor: ColorPattren.backGroundColor,
          backgroundColor: ColorPattren.lightPink,
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
                label: 'request', icon: Icon(CupertinoIcons.clock_fill)),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'calender')
          ]),
    );
  }
}
