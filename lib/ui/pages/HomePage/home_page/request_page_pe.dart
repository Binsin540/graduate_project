import 'package:flutter/material.dart';
import 'package:orchid_app/admin_panel/model/user_request.dart';

import '../../../../admin_panel/home_page/style/app_color.dart';
import '../../../widgets/flexibale_button.dart';

class RequestPagep extends StatefulWidget {
  const RequestPagep({Key? key}) : super(key: key);

  @override
  State<RequestPagep> createState() => _RequestPagepState();
}

class _RequestPagepState extends State<RequestPagep> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: 870,
          child: ListView.builder(
            itemCount: userReq.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.maxFinite,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorPattren.darkPurple),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${userReq[index].name}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ColorPattren.backGroundColor)),
                              Text("${userReq[index].date}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ColorPattren.backGroundColor)),
                              Text('رقم الباص :${userReq[index].busNum=="0"?"":userReq[index].busNum}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ColorPattren.backGroundColor)),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${userReq[index].city}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ColorPattren.backGroundColor)),
                              Text('${userReq[index].uni}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ColorPattren.backGroundColor)),
                              Text('${userReq[index].BusStop}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: ColorPattren.backGroundColor)),

                            ],
                          ),
                        ),
                        Row(
                          children: [ Text('${userReq[index].chairNum=='0'?'':userReq[index].chairNum}',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorPattren.backGroundColor,fontWeight: FontWeight.bold)),
                            Container(alignment: Alignment.center,child: Text("${userReq[index].Status}",style: TextStyle(color: ColorPattren.darkBlue,fontSize: 18)),
                              decoration: BoxDecoration(
                                  color: (userReq[index].Status=='انتظار')?Colors.yellow:userReq[index].Status=='مقبول'?Colors.green:Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  )),
                              height: double.maxFinite,
                              width: 75,
                            ),
                          ],
                        )
                      ],
                    )),
              );
            },
          ),
        ));
  }
}
