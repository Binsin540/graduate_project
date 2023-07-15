import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:get/get.dart';
import 'package:orchid_app/admin_panel/home_page/accepted_request.dart';
import 'package:orchid_app/admin_panel/home_page/add_city.dart';
import 'package:orchid_app/admin_panel/home_page/add_flight.dart';
import 'package:orchid_app/admin_panel/home_page/pending_request.dart';
import 'package:orchid_app/admin_panel/home_page/style/app_color.dart';
import 'package:orchid_app/admin_panel/model/bus_model.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({Key? key}) : super(key: key);

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  double h = 250;
  double w = 50;
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorPattren.backGroundColor,
          title: Center(
              child: Text(
            "Orchid Admin App",
            style: TextStyle(color: ColorPattren.darkPurple),
          ))),
      backgroundColor: ColorPattren.backGroundColor,
      body: SafeArea(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: ColorPattren.darkPurple),
                        child: PageView.builder(
                          itemCount: busList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 30),
                              child: Stack(children: [
                                Positioned(
                                  right: 1,
                                  left: 1,
                                  top: 50,
                                  bottom: 1,
                                  child: Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ColorPattren.darkBlue),
                                            width: 250,
                                            height: 250,
                                            alignment: Alignment.center,
                                          ),
                                          Positioned(
                                              left: 1,
                                              child: Container(
                                                height: ((busList[index]
                                                                .chairChecked *
                                                            250) /
                                                        busList[index]
                                                            .chairCount)
                                                    .toDouble(),
                                                width: ((busList[index]
                                                                .chairChecked *
                                                            250) /
                                                        busList[index]
                                                            .chairCount)
                                                    .toDouble(),
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.red),
                                              )),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 30, right: 75),
                                            decoration: BoxDecoration(
                                                color: ColorPattren.lightPink,
                                                shape: BoxShape.circle),
                                            height: 200,
                                            width: 200,
                                            child: Text(
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        ColorPattren.darkBlue,
                                                    fontSize: 22),
                                                "${busList[index].chairCount.toInt()}/${busList[index].chairChecked.toInt()}"),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            child: Container(
                                              color: ColorPattren.darkPurple,
                                              width: 400,
                                              height: 150,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  " رقم الباص : ${busList[index].busNum}",
                                  style: TextStyle(
                                      color: ColorPattren.backGroundColor,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                Positioned(
                                    left: 0,
                                    child: Text(
                                      "اسم  السائق: ${busList[index].busDriver}",
                                      style: TextStyle(
                                          color: ColorPattren.backGroundColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    )),
                                Positioned(
                                    bottom: 0,
                                    child: Text('اسم الخط:',
                                        style: TextStyle(
                                            color: ColorPattren.backGroundColor,
                                            fontSize: 22))),
                                Positioned(
                                    left: 0,
                                    bottom: 0,
                                    child: Text(
                                        'تاريخ الرحلة:${busList[index].date}',
                                        style: TextStyle(
                                            color: ColorPattren.backGroundColor,
                                            fontSize: 22)))
                              ]),
                            );
                          },
                        )),
                  ),
                  Expanded(
                      child: Container(
                    decoration:
                        BoxDecoration(color: ColorPattren.backGroundColor),
                    child: Wrap(
                        runSpacing: 20,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.horizontal,
                        verticalDirection: VerticalDirection.down,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        spacing: 20,
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlexButton(
                                  onTap: () {
                                    Get.to(const PendingRequest());
                                  },
                                  borderColor: Colors.transparent,
                                  borderWidth: 5,
                                  color: ColorPattren.darkBlue,
                                  width: 175,
                                  height: 70,
                                  widget: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('الطلبات المنتظرة ',
                                          style: TextStyle(
                                              color:
                                                  ColorPattren.backGroundColor,
                                              fontSize: 18)),
                                      Icon(
                                        Icons.pending_outlined,
                                        color: ColorPattren.backGroundColor,
                                      )
                                    ],
                                  ),
                                ),
                                FlexButton(
                                  onTap: () {
                                    Get.to(const AcceptedRequest());
                                  },
                                  borderColor: Colors.transparent,
                                  borderWidth: 5,
                                  color: ColorPattren.darkBlue,
                                  width: 175,
                                  height: 70,
                                  widget: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('الطلبات المقبولة ',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: ColorPattren
                                                  .backGroundColor)),
                                      Icon(
                                        CupertinoIcons.tray_arrow_down,
                                        color: ColorPattren.backGroundColor,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlexButton(
                                onTap: () {
                                  Get.to(AddFlight());
                                },
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                color: ColorPattren.darkBlue,
                                width: 175,
                                height: 70,
                                widget: Text(' اضافة رحلة',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorPattren.backGroundColor)),
                              ),
                              FlexButton(
                                onTap: () {
                                  setState(() {
                                    x = x + 1;
                                    print(x);
                                  });
                                },
                                borderColor: Colors.transparent,
                                color: ColorPattren.darkBlue,
                                width: 175,
                                height: 70,
                                widget: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('اضافة باص',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                ColorPattren.backGroundColor)),
                                    Icon(
                                      Icons.directions_bus,
                                      color: ColorPattren.backGroundColor,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          FlexButton(
                            onTap: () {
                              Get.to(const AddCity());
                            },
                            borderColor: Colors.transparent,
                            borderWidth: 5,
                            color: ColorPattren.darkBlue,
                            width: 210,
                            height: 70,
                            widget: Text('اضافة خط ',
                                style: TextStyle(
                                    color: ColorPattren.backGroundColor)),
                          )
                        ]),
                  )),
                ],
              ),
            )),
      ),
    );
  }
}
