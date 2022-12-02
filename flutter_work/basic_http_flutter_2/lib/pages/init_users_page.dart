import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// as ?? 우선권을 먼저준다
import '../utils/constant.dart';
import 'dart:convert' as convert;

class InitUsersPage extends StatefulWidget {
  const InitUsersPage({Key? key}) : super(key: key);

  @override
  State<InitUsersPage> createState() => _InitUsersPageState();
}

class _InitUsersPageState extends State<InitUsersPage> {
  // 메모리에 올라 갈 때 한번만 호출 되는 메서드
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

  fetchUserList() async {
    // http://lalacoding.site/init/user
    // var endPoint = "/users";

    var uri = Uri.parse("http://lalacoding.site/init/user");
    var response = await http.get(uri);
    print(response.statusCode);
    // 방어적 코드
    if (response.statusCode == 200) {
      // print(response.body.runtimeType);
      // print(response.body);
      // map 구조로 변환이 된다 !!! ( convert 쓰면 )
      var jsonRes = convert.jsonDecode(response.body) as Map<String, dynamic>;
      print("------------------------------------------");
      // map['code'] <----- value
      print(jsonRes.runtimeType);
      //  첫번째 반복문 시작시 동작
      // key : code
      // value : 1
      // --------------------한번돌고요
      //  key : msg
      // value : 목록보기완료
      // --------------------한번돌고요
      // key : data
      // value : [{key:value}.........]
      // --------------------한번돌고요

      // jsonRes ---> Map<String, dynamic>
      // ---> data ???
      jsonRes.forEach((key, value) {
        // print("key : $key");
        // print("value : ${jsonRes['$key']}");

        // 1. 만약 키가 data 라면 추가
        // 1. code
        // 2. msg
        // 3. data

        if (key == "data") {
          // 2. 화면에 사용자 이름만 출력하시오 !!!
          print(jsonRes['data']);
          print(jsonRes['$key'].runtimeType);
          List list = jsonRes['$key'];
          // 84
          list.forEach((e) {
            print("-------");
            print(e.runtimeType);
            // ...username ---> 화면에 출력
            print("-------------------");
            print(e['username']);
            print(e['id']);
            print("--------------");
          });
        }
      });
    } else {}
  }
}
