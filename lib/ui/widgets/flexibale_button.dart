import 'package:flutter/material.dart';
import 'package:orchid_app/ui/style/app_color.dart';




class FlexButton extends StatelessWidget {
   FlexButton({this.color,required this.borderColor,this.borderWidth=0,this.widget,this.height=100,this.width=200,this.onTap,
    super.key,

  });
Widget ?widget;

Color ?color ;
double width;
double height;
double borderWidth;
Color borderColor;
var onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(border: Border.all(width: borderWidth,color: borderColor,style: BorderStyle.solid),
            color:  color,
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle),child: widget,
      ),
    );
  }
}
