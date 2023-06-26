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
          color: ColorPattren.lightPink,
          border: Border.all(
            color: Colors.transparent  ,
            width: 2,
          )),
      height: 103,child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
        TitleText(size: 18,text: title,),
        TextFormField(keyboardType: inputType,controller:controll,decoration: InputDecoration(  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink.shade100))),)
      ]),
    );
  }
}
