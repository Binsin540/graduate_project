class UserRequest {
  String name;
  String city;
  String date;
  String uni;
  String BusStop;
  String Status;
  String chairNum;
  String busNum;
  UserRequest(
      {required this.name,
      required this.city,
      required this.BusStop,
      required this.date,
      required this.uni,
      required this.Status,this.chairNum='0',
      this.busNum="0"});
}
List<UserRequest>userReq=[
  UserRequest(city: 'جديدة عرطوز',BusStop: "افران نور الشام ",date: "17/5/2022 - 6:30",name: 'سمير داغر',uni: 'Ipu',Status: 'انتظار'),
  UserRequest(city: 'جديدة عرطوز',BusStop: "افران نور الشام ",date: "16/5/2022 - 8:30",name: 'سمير داغر',uni: 'Ipu',Status: 'مرفوض'),
  UserRequest(city: 'جديدة عرطوز',BusStop: "افران نور الشام ",date: "16/5/2022 - 6:30",name: 'سمير داغر',uni: 'Ipu',Status: 'مقبول',chairNum: '15',busNum: '1'),
  UserRequest(city: 'جديدة عرطوز',BusStop: "مخفر جديدة ",date: "14/5/2022 - 6:30",name: 'سمير داغر',uni: 'Ipu',Status: 'مقبول',chairNum: "22",busNum: '3')

];