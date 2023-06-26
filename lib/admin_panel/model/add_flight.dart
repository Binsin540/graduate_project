class AddFlightMod{
  final List<String> city;
  final List<String>busStop;
  final List<String>buses;

  AddFlightMod({required this.city, required this.busStop, required this.buses});

  factory AddFlightMod.fromjson(dynamic json){
    return AddFlightMod(city:json["city"]as List<String>,
      busStop :json["busStop"] as List<String>,
      buses:json["buses"]as List<String>

    );
  }

}