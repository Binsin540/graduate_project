class BusModel{
  String busNum;
  int busCount;
  bool busCheck;
  String busDriver;

  BusModel({required this.busCount,required this.busNum,required this.busCheck,required this.busDriver});

}
List<BusModel>busList=[
  BusModel(busCount: 54, busNum: '1', busCheck: true, busDriver: 'عبد'),
  BusModel(busCount: 24, busNum: '6',busCheck: true, busDriver: 'خضر'),
  BusModel(busCount: 54, busNum: '3',busCheck: true, busDriver: 'ابراهيم'),
  BusModel(busCount: 60, busNum: '4',busCheck: true, busDriver: 'سمير'),
  BusModel(busCount: 60, busNum: '5',busCheck: true, busDriver: 'محمد'),
  BusModel(busCount: 60, busNum: '2',busCheck: true, busDriver: 'احمد'),

];
class BusCount{
int chairNum;
bool chairCheck;
BusCount({required this.chairCheck,required this.chairNum});


}
