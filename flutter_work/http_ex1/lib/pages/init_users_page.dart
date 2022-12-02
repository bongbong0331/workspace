import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
// as ? 를 쓰면 우선권을 먼저 준다.


class InitUsersPage extends StatefulWidget {
  const InitUsersPage({Key? key}) : super(key: key);

  @override
  State<InitUsersPage> createState() => _InitUsersPageState();
}

class _InitUsersPageState extends State<InitUsersPage> {

@override
  void initState() {
    fetchUserList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("사용자조회"),
      ),
      body: ListView(
        children: [
          Text("전체 사용자 목록 조회"),
        ],
      ),
    );
  }

  fetchUserList() async{
    // http://lalacoding.site/init/user
    // var endPoint = "/users";

    var uri = Uri.parse("http://lalacoding.site/init/user");
    var response = await http.get(uri);
    print(response.statusCode);
    // 방어적 코드 200 = 성공
    if(response.statusCode == 200){
      // print(response.runtimeType);
      // print(response.body);
      // print(response.body.runtimeType);
      // map 구조로 변환 시키기 (convert)
      var jsonRes = convert.jsonDecode(response.body) as Map<String, dynamic>;
      // print("11111111111111");
      // print(jsonRes.runtimeType);

      jsonRes.forEach((key, value) {
        print('forEach시작');
        // print(key);
        // print("key : $key");
        // print("value : $value");
        // print("$key + $value");

        if(key == "data"){
          print(jsonRes["data"]);
          // print(jsonRes["$key"].runtimeType);

          List list = jsonRes["$key"];
          // print(list);
          // print(value.runtimeType);
          // {"data" : List<dynamic>}
          // --> 인덱스 -- 85 ..
          // 0  --> {id : 123 .....}
          // 1  ---> {}

          list.forEach((e) {
            // print(e.runtimeType);
            print("맵보자");
            print(e['email']);
            print(e["username"]);
            print(e["created"]);
            print(e["updated"]);
            print(e["password"]);
          });
        }
      });



    }
  }



























} // end of class
