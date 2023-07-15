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
    return Scaffold(
      drawer: SafeArea(
        child: Directionality(textDirection: TextDirection.rtl,
          child: Drawer(
              backgroundColor: ColorPattren.backGroundColor,
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    color: ColorPattren.lightPink,
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: ColorPattren.darkAccentBlue,
                              child: Icon(
                                Icons.person,
                                size: 50,
                              )),
                        ),
                        Text(
                          'Sameer Dagher',
                          style: TextStyle(
                              color: ColorPattren.darkPurple,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "جامعة الاتحاد الخاصة",
                              style: TextStyle(fontSize: 14),
                            ),
                            Icon(Icons.arrow_downward_outlined)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.wallet, color: ColorPattren.darkPurple),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'المحفظة',
                            style: TextStyle(
                                fontSize: 18, color: ColorPattren.darkPurple),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:  20.0),
                          child: Text("1000 ل.س"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.settings, color: ColorPattren.darkPurple),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'الاعدادات',
                            style: TextStyle(
                                fontSize: 18, color: ColorPattren.darkPurple),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              )),
        ),
      ),
      appBar: AppBar(actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: ColorPattren.darkAccentBlue,
              child: Icon(Icons.person)),
        ),
      ], backgroundColor: ColorPattren.backGroundColor, elevation: 0),
      body: Directionality(textDirection: TextDirection.rtl,child: SingleChildScrollView(child: pages[currentin])),
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
          unselectedItemColor: ColorPattren.darkPurple,
          selectedItemColor: ColorPattren.backGroundColor,
          backgroundColor: ColorPattren.lightPink,
          items: const [
            BottomNavigationBarItem(
              label: 'الصفحة الرئيسية:',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
                label: 'السجل', icon: Icon(CupertinoIcons.clock_fill)),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "كل الرحل")
          ]),
    );
  }
}
