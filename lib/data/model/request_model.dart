import 'package:flutter/material.dart';

import '../../ui/style/app_color.dart';
import '../../ui/widgets/title_text.dart';

class RequestModel {
  List<String>uniID ;
  List<String>city ;
  List<DropdownMenuItem>tripTime ;
  List<List>busStop ;
  String price;
  RequestModel({required this.uniID,required this.busStop, required this.city,required this.tripTime,required this.price});
}

RequestModel uireq=RequestModel(uniID: ['Spu','Iust','Aiu','Ipu','Ru','Jpu'],
  city: ['jdaydet Artouz','Mazzeh','BabToma'],
  tripTime: [DropdownMenuItem(
    value: '6:35',
    child: TitleText(color: ColorPattren.btnClolor,text: "6:35"),
  ),
    DropdownMenuItem(
      value: '8:35',
      child: TitleText(color: ColorPattren.btnClolor,text: "8:35"),
    )],
  busStop: [
  ['قطنا كنيسة',"كازية حمودة",'مفرق جديدة الثاني',"بحرى","ساحة بيسان","مخفر","دوار الجندي","قوس جديدة","مفرق صحنايا"],
  ["بحرى","ساحة بيسان","مخفر","دوار الجندي","قوس جديدة","مفرق صحنايا"],
  ], price: '16000'
);

