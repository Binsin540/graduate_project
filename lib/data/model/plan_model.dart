import 'package:flutter/widgets.dart';

import '../../ui/pages/HomePage/home_page/dailyCard.dart';
import '../../ui/pages/HomePage/home_page/halfCard.dart';
import '../../ui/pages/HomePage/home_page/monthlyCard.dart';

class PlanMod{
  String planName;
  String daitels;
  double price;
  Widget pagename;

  PlanMod({required this.planName,required this.daitels,required this.price,required this.pagename});
}
List<PlanMod>planMod=[
 PlanMod(planName: "يومي", daitels: "daitels", price: 16000, pagename: Daily()),
  PlanMod(planName: 'شهري', daitels: "daitels", price: 360000, pagename: Monthly()),
  PlanMod(planName: " فصلي", daitels: "daitels", price: 900000, pagename: Half())
];