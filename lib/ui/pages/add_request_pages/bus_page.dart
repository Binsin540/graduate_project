import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orchid_app/ui/style/app_color.dart';

class BusPage extends StatefulWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattren.backGroundColor,
      body: Center(
          child: Stack(children: [
        SvgPicture.asset("assets/images/BUSSEN.svg", height: 1500, width: 1000),
        SvgPicture.asset(
          "assets/images/seat.svg",
          height: 1000,
        )
      ])),
    );
  }
}
