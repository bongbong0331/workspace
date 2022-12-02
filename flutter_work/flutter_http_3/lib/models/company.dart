

class Company{

  var name;
  var catchPhrase;
  var bs;


  Company.fromJson(Map<String, dynamic> mapData)
      : name = mapData["name"],
        catchPhrase = mapData["catchPhrase"],
        bs = mapData["bs"];

  // Company.map(Map<String, dynamic> mapJson)
  //     : name = mapJson["name"],
  //       catchPhrase = mapJson["catchPhrase"],
  //       bs = mapJson["bs"];

  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }
}