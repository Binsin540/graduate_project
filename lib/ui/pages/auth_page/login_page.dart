import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orchid_app/ui/layout/home_layout/home_layout.dart';
import 'package:orchid_app/ui/pages/auth_page/signup_page.dart';
import 'package:orchid_app/ui/style/app_color.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../../widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattren.backGroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 350,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorPattren.darkBlue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Textff(
                          text: 'Email',
                          hintColor: ColorPattren.lightPink,
                          pficon: Icons.mail,
                          prefColor: ColorPattren.lightPink,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Textff(
                          text: 'Password',
                          hintColor: ColorPattren.lightPink,
                          pficon: Icons.security,
                          prefColor: ColorPattren.lightPink,
                          suffColor: ColorPattren.lightPink,
                          sficon: Icons.visibility,
                        ),
                      ),
                      FlexButton(
                        borderWidth: 3,
                        color: ColorPattren.orangeAccent,
                        onTap: () {
                          Get.to(Homelayout());
                        },
                        height: 50,
                        width: 150,
                        borderColor: ColorPattren.lightPink,
                        widget: TitleText(
                          text: 'Login',
                          color: ColorPattren.darkAccentBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TitleText(text: 'or SignUp', size: 14),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlexButton(onTap: (){
                     Get.to(SignUpPage());
                  },
                      widget: TitleText(text: 'Create your Account Now',color: ColorPattren.lightPink),
                      borderColor: ColorPattren.orangeAccent,
                      color: ColorPattren.darkPurple,
                      width: double.maxFinite,
                      height: 50,
                      borderWidth: 3),
                )
              ]),
        ),
      ),
    );
  }
}
