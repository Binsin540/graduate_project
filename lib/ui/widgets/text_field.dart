import 'package:flutter/material.dart';
import 'package:orchid_app/ui/style/app_color.dart';



class Textff extends StatelessWidget {
   Textff({
    super.key,this.pficon,this.sficon,required this.text,this.keyType
  });
String text;
IconData? pficon; 
IconData? sficon;
TextInputType? keyType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(filled: true,fillColor:ColorPattren.itemColor.withOpacity(0.2),hintStyle: TextStyle(color: Colors.black,fontSize: 18),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),),
            hintText: text,labelStyle: TextStyle(fontSize: 20),
            prefixIcon: Icon(pficon),
            suffixIcon:Icon(sficon) ),
      keyboardType: keyType,

    );
  }
}