class BusModel{
  String busNum;
  int busCount;
  bool busCheck;
  String busDriver;
  String cityName;
  String date;
  double chairCount;
  double chairChecked;
  BusModel({required this.chairChecked,required this.chairCount,required this.date,required this.cityName,required this.busCount,required this.busNum,required this.busCheck,required this.busDriver});

}
List<BusModel>busList=[
  BusModel(busCount: 54, busNum: '1', busCheck: true, busDriver: 'عبد', cityName: 'جديدة عرطوز',date: "17/7 - 6:30", chairChecked: 25,chairCount: 56),
  BusModel(busCount: 24, busNum: '6',busCheck: true, busDriver: 'خضر',date: '17/7 - 6:30',cityName: "مزة",chairCount: 55,chairChecked:55 ),
  BusModel(busCount: 54, busNum: '3',busCheck: true, busDriver: 'ابراهيم',cityName: "جديدة عرطوز",date: '17/7 - 8:30',chairChecked: 24,chairCount: 24),
  BusModel(busCount: 60, busNum: '4',busCheck: true, busDriver: 'سمير',date: '17/7 - 8:30',cityName: "مزة",chairCount: 56,chairChecked: 50,),
  BusModel(busCount: 60, busNum: '5',busCheck: true, busDriver: 'محمد',cityName: "جديدة عرطوز",date: '17/7 - 10:30',chairChecked: 24,chairCount: 24),
  BusModel(busCount: 60, busNum: '2',busCheck: true, busDriver: 'احمد',cityName: "مزة",date: '17/7 - 10:30',chairCount: 40,chairChecked: 35),

];
class BusCount{
int chairNum;
bool chairCheck;
BusCount({required this.chairCheck,required this.chairNum});


}
