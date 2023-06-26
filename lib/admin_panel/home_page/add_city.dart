import 'package:flutter/material.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../../ui/style/app_color.dart';
import '../../ui/widgets/Orchid_Text_form.dart';

class AddCity extends StatefulWidget {
  const AddCity({Key? key}) : super(key: key);

  @override
  State<AddCity> createState() => _AddCityState();
}

class _AddCityState extends State<AddCity> {
  int busStopC = 1;
  List<String>newBusStop=[];
  TextEditingController ctrl =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattren.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50)),
                        color: ColorPattren.darkPurple),
                    width: 150,
                    child: Text(
                      "  اضافة خط :",
                      style: TextStyle(
                        color: ColorPattren.backGroundColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      TextFormO(
                        title: "اسم الخط :",
                        inputType: TextInputType.name,
                      ),
                      ListView.builder(
                        itemCount: busStopC,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                padding: EdgeInsets.all(8),
                                width: 400,
                                height: 120,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          ColorPattren.darkBlue,
                                          ColorPattren.darkPurple
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TitleText(
                                          text: " $index اضف موقف: ",
                                          color: ColorPattren.lightPink,
                                        ),
                                        IconButton(onPressed: (){
                                         setState(() {
                                          if(ctrl!=null) {
                                            busStopC += 1;
                                            newBusStop.add(ctrl.text);
                                          }
                                         }); },icon:const Icon(size: 50,color: Colors.cyan,Icons.add))
                                      ],
                                    ),
                                    TextFormField(controller:ctrl)
                                  ],
                                )),
                          );
                        },
                      ),
                      FlexButton(borderColor: Colors.transparent,color:  ColorPattren.darkPurple,widget: Text('حفظ',style: TextStyle(fontSize: 30,color: ColorPattren.orangeAccent)),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
