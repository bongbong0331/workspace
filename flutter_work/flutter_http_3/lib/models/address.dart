

class Address{

  var city;



  Address.fromJson(Map<String, dynamic> mapData)
      : city = mapData["city"];


  @override
  String toString() {
    return 'Company{city : $city}';
  }
}