import 'package:flutter/material.dart';
import 'package:orchid_app/ui/style/app_color.dart';



class Textff extends StatelessWidget {
   Textff({this.hintColor,this.suffColor,
    this.prefColor,super.key,this.pficon,this.sficon,required this.text,this.keyType
  });
String text;
IconData? pficon; 
IconData? sficon;
TextInputType? keyType;
   Color? prefColor ;
   Color? suffColor ;
   Color? hintColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(filled: true,fillColor:ColorPattren.lightPink.withOpacity(0.2),hintStyle: TextStyle(color: Colors.black,fontSize: 18),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),),
            labelStyle: TextStyle(fontSize: 20,color: hintColor),
  labelText: text,
            prefixIcon: Icon(pficon,color: prefColor,),
            suffixIcon:Icon(sficon,color: suffColor,) ),
      keyboardType: keyType,

    );
  }
}