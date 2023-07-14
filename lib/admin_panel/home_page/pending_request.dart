import 'package:flutter/material.dart';
import 'package:orchid_app/admin_panel/home_page/style/app_color.dart';
import 'package:orchid_app/ui/widgets/flexibale_button.dart';

class PendingRequest extends StatefulWidget {
  const PendingRequest({Key? key}) : super(key: key);

  @override
  State<PendingRequest> createState() => _PendingRequestState();
}

class _PendingRequestState extends State<PendingRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Center(),
          elevation: 0,
          backgroundColor: ColorPattren.darkBlue,
          title: Center(
            child: Text('الطلبات المنتظرة',
                style: TextStyle(
                    fontSize: 26,
                    color: ColorPattren.backGroundColor,
                    fontWeight: FontWeight.bold)),
          )),
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
                                  Text('uni', style: TextStyle(fontSize: 18))
                                ],
                              ),
                            ),
                            FlexButton(color: Colors.lightGreenAccent,
                              borderColor: Colors.greenAccent,
                              width: 75,
                              height: 75,
                              borderWidth: 1,
                              widget: Icon(Icons.done,color: Colors.green),
                            ),
                            FlexButton(color: Colors.red,
                              borderColor: Colors.redAccent,
                              widget: Icon(Icons.close,color: Colors.black),
                              width: 75,
                              height: 75,
                              borderWidth: 1,
                            )
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
