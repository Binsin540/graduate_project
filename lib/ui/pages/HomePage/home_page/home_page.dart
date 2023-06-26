import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:orchid_app/data/model/plan_model.dart';
import 'package:orchid_app/ui/pages/add_request_pages/request_page.dart';
import 'package:orchid_app/ui/style/app_color.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';
import 'package:orchid_app/ui/widgets/sub_text.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

class HomePageO extends StatefulWidget {
  const HomePageO({Key? key}) : super(key: key);

  @override
  State<HomePageO> createState() => _HomePageOState();
}

class _HomePageOState extends State<HomePageO> {
  String tomorrow =
      DateFormat.yMMMd().format(DateTime.now().add(const Duration(days: 1)));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TitleText(text: 'Tomorrow', size: 26),
                  TitleText(text: tomorrow),
                ],
              ),
              FlexButton(
                color: ColorPattren.lightPink,
                onTap: () {
                  Get.to(RequestPage());
                },
                borderColor: Colors.transparent,
                widget: TitleText(
                  size: 18,
                  color: ColorPattren.darkPurple,
                  text: 'add request +',
                ),
                height: 70,
                width: 140,
              ),
            ],
          ),
          const Divider(
              height: 20, thickness: 4, color: ColorPattren.darkAccentBlue),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: planMod.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: ColorPattren.lightPink)),
                    Positioned(
                        left: 15,
                        top: 20,
                        bottom: 20,
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[800]),
                        )),
                    Positioned(
                      left: 140,
                      top: 20,
                      bottom: 15,
                      child: Container(
                        width: 200,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleText(
                                text: "${planMod[index].planName} Checkout :",
                              ),
                              const Divider(
                                  height: 4,
                                  thickness: 4,
                                  color: ColorPattren.darkAccentBlue,
                                  endIndent: 50),
                              SubText(
                                overflow: TextOverflow.ellipsis,
                                maxLine: 2,
                                text:
                                    "Lorem ipusm[10]sldkfhlskdfhsldhfsldkfslkdfhlksdhfpqipqefihakhflkafdasdasdasdasdsadasdasdasdasdasd",
                                size: 12,
                              ),
                              SubText(
                                  text: "pay : ${planMod[index].price} Sp",
                                  fontWeight: FontWeight.w500,
                                  size: 12),
                            ]),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: FlexButton(
                          color: ColorPattren.darkPurple,
                          borderColor: Colors.transparent,
                          width: 120,
                          height: 40,
                          widget: TitleText(text: 'Check Out', size: 18,color: ColorPattren.lightPink),
                        ))
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
