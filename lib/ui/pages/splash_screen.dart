import 'package:flutter/material.dart';
import 'package:orchid_app/ui/style/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xffefdcf4),Color(0xffefdcf4),Color(0xffffffff)],begin: Alignment.topCenter,end: Alignment.bottomCenter)),);
  }
}
