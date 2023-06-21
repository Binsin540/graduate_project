import 'package:flutter/material.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../style/app_color.dart';

class TextFormO extends StatelessWidget {
   TextFormO({this.inputType,this.title='Title',this.controll,
    super.key,
  });
String title;
TextEditingController? controll;
TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorPattren.itemColor,
          border: Border.all(
            color: Color(0x42424242),
            width: 2,
          )),
      height: 100,child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
        TitleText(size: 18,text: title,),
        TextFormField(keyboardType: inputType,controller:controll,decoration: InputDecoration(  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink.shade100))),)
      ]),
    );
  }
}
