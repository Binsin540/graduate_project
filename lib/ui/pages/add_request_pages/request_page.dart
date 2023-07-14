import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:orchid_app/data/model/request_model.dart';
import 'package:orchid_app/ui/style/app_color.dart';
import 'package:orchid_app/ui/widgets/Expand_selector.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';
import 'package:orchid_app/ui/widgets/sub_text.dart';
import 'package:orchid_app/ui/widgets/text_field.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../../widgets/Orchid_Text_form.dart';
import 'bus_page.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);
String  ?selectedTrip;
 String  busStopSelected='';



  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
late int bSId=0;
final TextEditingController _firstNameCtrl=TextEditingController();
final TextEditingController _LastNameCtrl=TextEditingController();
final String uniSelect='';
final String citySelect='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: FlexButton(onTap: (){
      Get.to( BusPage());
    },borderWidth: 1.5,borderColor: Colors.pink.shade200,height: 70,width: double.maxFinite,color: ColorPattren.darkAccentBlue,widget: TitleText(text: "اشترك الان",color: Colors.pink.shade200),),
      backgroundColor: ColorPattren.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TitleText(
                  text: 'اضافة طلب :',
                  color: ColorPattren.darkAccentBlue,
                  size: 26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormO(title: 'الاسم الاول',inputType: TextInputType.name,controll: _firstNameCtrl),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormO(title: ' الاسم الاخير',inputType: TextInputType.name,controll: _LastNameCtrl),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ExpandSelector(title: 'اختر الجامعة',selectString: uireq.uniID, sValue: uniSelect),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ExpandSelector(title: 'اختر المدينة',selectString: uireq.city,sValue: citySelect),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(decoration: BoxDecoration(color: ColorPattren.lightPink,borderRadius: BorderRadius.circular(12),border: Border.all(color: Color(0x42424242))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TitleText(text: ":اختر ساعة الرحلة  ",color: ColorPattren.darkBlue),
                      DropdownButton(icon:  const Icon(CupertinoIcons.clock,color: ColorPattren.darkPurple),
                        value: widget.selectedTrip,
                        elevation: 1,
                        items: uireq.tripTime.map((e) => DropdownMenuItem(value: e,child: Text(e))).toList()
                        ,
                        onChanged: (value) {
                          setState(() {
                           widget.selectedTrip = value;
                           if (value=='6:35'){bSId=0;}
                           else {
                             bSId=1;
                           }
                          });
                          print(widget.selectedTrip);
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ExpandSelector(title: 'اختر الموقف',selectString:uireq.busStop[bSId],sValue:widget.busStopSelected ,),
              ),
              Padding(
                padding:  const EdgeInsets.symmetric(vertical: 10.0),
                child: TitleText(text: 'التكلفة =    16000',size: 26, ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}

