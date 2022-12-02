import 'package:flutter_http_3/models/company.dart';

import 'address.dart';

class User {
  int? id;
  String? name;
  String? email;
  Company? company;
  String? city;

  User(this.id, this.name, this.email, this.company, this.city);


  // city 값도 받아서 넣어주세요 !!!
  User.fromJson(Map<String, dynamic> mapJson)
      : id = mapJson["id"],
        name = mapJson["name"],
        email = mapJson["email"],
  city = mapJson["address"]["city"],
        // company = mapJson[Company.map(mapJson)];
        company = Company.fromJson(mapJson["company"]);
  /// company = {id : 1, name : asdasd, .....}

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, city : $city, company: $company}';
  }
}
