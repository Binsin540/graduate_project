import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../../../admin_panel/home_page/style/app_color.dart';

class CalPage extends StatefulWidget {
  const CalPage({Key? key}) : super(key: key);

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
double h=50;
double w=50;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Stack(alignment: Alignment.center,
          children: [
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              width: 300,
              height: 300,
              alignment: Alignment.center,

              ),

            Positioned(left: 1,child: Container(height: h,width:w ,decoration:  BoxDecoration(shape: BoxShape.circle,color: ColorPattren.darkBlue),)),

            Container(
    decoration:
    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    height: 250,
    width: 250,),

            Positioned(bottom: 0,child: Container(color:  ColorPattren.backGroundColor,width: 400,height: 150,),),
          ],
        ),
        OutlinedButton(onPressed: (){
          setState(() {
            h=h+10;
            w=w+10;

          });
          print(h+w);

        }, child: Text('asdasd'),)
      ],
    );
  }
}
