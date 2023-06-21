import 'package:flutter/material.dart';

class SubText extends StatelessWidget {
   SubText({
    super.key,required this.text,this.color=Colors.black,this.size=20,this.fontWeight,this.overflow,this.maxLine=1
  });
String text;
Color color;
double size ;
TextOverflow ?overflow;
int maxLine;

FontWeight ?fontWeight;

  @override
  Widget build(BuildContext context) {
    return     Text(text,style: TextStyle(overflow:overflow ,color: color,fontSize: size,fontWeight :fontWeight,

    ),maxLines:maxLine ,);
  }}