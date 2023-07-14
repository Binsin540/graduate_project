import 'package:flutter/material.dart';

import '../../ui/style/app_color.dart';
import '../../ui/widgets/flexibale_button.dart';

class AcceptedRequest extends StatefulWidget {
  const AcceptedRequest({Key? key}) : super(key: key);

  @override
  State<AcceptedRequest> createState() => _AcceptedRequestState();
}

class _AcceptedRequestState extends State<AcceptedRequest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(elevation: 0,backgroundColor: ColorPattren.darkBlue,leading: Center(),title: Center(child: Text('الطلبات المقبولة',style: TextStyle(color: ColorPattren.backGroundColor,fontSize: 22,fontWeight:FontWeight.bold ),))),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 870,
              child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(padding: EdgeInsets.all(8),
                        width: double.maxFinite,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorPattren.backGroundColor),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('name', style: TextStyle(fontSize: 18)),
                                  Text("date",
                                      style: TextStyle(fontSize: 18))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('city', style: TextStyle(fontSize: 18)),
                                  Text('uni', style: TextStyle(fontSize: 18)),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('busstop', style: TextStyle(fontSize: 18)),
                                  Text('bus chair', style: TextStyle(fontSize: 18)),

                                ],
                              ),
                            ),

                          ],
                        )),
                  );
                },
              ),
            ),
          )),

    );
  }
}
