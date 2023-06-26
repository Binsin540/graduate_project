import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orchid_app/ui/layout/home_layout/home_layout.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';
import 'package:orchid_app/ui/widgets/text_field.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../../style/app_color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattren.backGroundColor,
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TitleText(text: 'Welocome to Orchid',size: 26),
            ),
              TitleText(text: "First Name ",color: ColorPattren.darkPurple,),
            Textff(text: "",),
            TitleText(text: 'Last Name',),
            Textff(text: ''),
              TitleText(text: 'Mail',),
              Textff(text: ''),
              TitleText(text: 'Phone Number',),
              Textff(text: ''),
              TitleText(text: "unevercity Id"),
              Textff(text: ''),
              TitleText(text: 'Password',),
              Textff(text: ''),
              TitleText(text: 'Confirm Password',),
              Textff(text: ''),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FlexButton(color: ColorPattren.darkPurple,widget: TitleText(text: 'SignUP',size: 24,color: ColorPattren.lightPink),borderColor: Colors.transparent,onTap: (){Get.to(Homelayout());},width: 210,height: 70,),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
