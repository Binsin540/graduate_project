import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orchid_app/ui/style/app_color.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';

class BusPage extends StatefulWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattren.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(textDirection:TextDirection.rtl ,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Container(decoration: const BoxDecoration(color: ColorPattren.darkPurple,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))),padding: EdgeInsets.all(8),child: Text("اختر مقعدا :",style: TextStyle(color: ColorPattren.backGroundColor,fontSize: 26),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('المقعد الاحمر يحدد كمكان محجوز :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold )),
                SvgPicture.asset("assets/images/seat.svg",height: 30,color:  Colors.red,)
              ]),
            ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20.0),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [const Text('المقعد الكحلي يحدد كمكان غير محجوز:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold )),
                    SvgPicture.asset("assets/images/seat.svg",height: 30,color:  const Color(0xff1b4958),)
                  ]),
                )

                ,SizedBox(
                  height: 1300,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    Positioned(
                        top: 10,
                        child: Image.asset("assets/images/bus1.png", height: 1100,color: ColorPattren.lightPink,)),
                    Positioned(
                      top: 200,
                      left: 100,
                      child: SizedBox(
                        height: 1500,
                        width: 200,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 53,
                          itemBuilder: (BuildContext context, int index) {
                            return FlexButton(borderColor: ColorPattren.darkPurple,onTap: (){},borderWidth: 1,
                              widget: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/seat.svg",
                                    height: 30,color: const Color(0xff1b4958),
                                  ),
                                  Text("${index + 1}")
                                ],
                              ),
                            );
                            // ignore: prefer_const_constructors
                          },
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              mainAxisExtent: 50),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
