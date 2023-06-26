import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:orchid_app/admin_panel/home_page/add_city.dart';

import '../../ui/style/app_color.dart';
import '../widgets/multi_item.dart';

class AddFlight extends StatefulWidget {
  AddFlight({Key? key}) : super(key: key);

  @override
  State<AddFlight> createState() => _AddFlightState();
}

class _AddFlightState extends State<AddFlight> {
  var cityVal;
  var busnum;
  List<String> busStop = [];
  DateTime flightDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Container(alignment: Alignment.center,
              height: 100,
              decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [ColorPattren.darkAccentBlue,ColorPattren.darkPurple]),
                  border: Border.all(color: ColorPattren.darkPurple, width: 5),
                  borderRadius: BorderRadius.circular(20),
                  ), child: Text('Submit',style: TextStyle(color: ColorPattren.backGroundColor,fontSize: 36))),
        ),
      ),
      backgroundColor: ColorPattren.backGroundColor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50)),
                    color: ColorPattren.darkPurple),
                width: 150,
                child: Text(
                  "  اضافة رحلة :",
                  style: TextStyle(
                    color: ColorPattren.backGroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorPattren.lightPink),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("اختر خط",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    DropdownButton(
                      elevation: 0,
                      icon: const Icon(Icons.arrow_downward_outlined),
                      hint: const Text(''),
                      items: ['مزة', 'جديدة', "باب توما"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e,
                                    style: const TextStyle(fontSize: 20)),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          cityVal = value!;
                        });
                      },
                      value: cityVal,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(AddCity());
                        },
                        icon: const Icon(
                          Icons.add_circle_outline,
                          size: 35,
                        ))
                  ],
                ),
              ),
            ),
            MultiSelectItem(
              height: 50,
              buttColor: ColorPattren.lightPink,
              listOfItem: ['mazzeh', 'asdasdsa', 'asdsadsad', 'dasdsadjhjhg'],
              child: const Text('اختر المواقف ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorPattren.lightPink),
                padding: EdgeInsets.all(20),
                width: double.maxFinite,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'اختر ساعة ويوم الانطلاق:',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () async {
                                DateTime? newDate = await showDatePicker(
                                    context: context,
                                    initialDate: flightDate,
                                    firstDate: DateTime(DateTime.now().year),
                                    lastDate: DateTime(flightDate.year + 3));
                                if (newDate == null) return;

                                TimeOfDay? newTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay(
                                        hour: flightDate.hour,
                                        minute: flightDate.minute));
                                if (newTime == null) return;
                                setState(() {
                                  flightDate = DateTime(
                                      newDate.year,
                                      newDate.month,
                                      newDate.day,
                                      newTime.hour,
                                      newTime.minute);
                                });
                              },
                              icon: Icon(Icons.date_range)),
                        ]),
                    Text(
                      "${flightDate.year}/${flightDate.month}/${flightDate.day}  ${flightDate.hour}:${flightDate.minute}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 26),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorPattren.lightPink),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("اختر باص",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    DropdownButton(
                      elevation: 0,
                      icon: const Icon(Icons.arrow_downward_outlined),
                      hint: const Text(''),
                      items: ['1', '2', "3"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e,
                                    style: const TextStyle(fontSize: 20)),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          busnum = value!;
                        });
                      },
                      value: busnum,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline,
                          size: 35,
                        ))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
