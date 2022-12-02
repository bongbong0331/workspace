import 'package:flutter/material.dart';
import 'package:flutter_basic_http5/models/response_user.dart';
import 'package:flutter_basic_http5/models/request_user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// 까악
import 'package:flutter_basic_http5/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // fetchgetUser();
              // joinUser();
              loginUser();
            },
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              putUser();
            },
            child: Column(
              children: [
                Container(
                  width: 20,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } // build end

  fetchgetUser() async {
    var uri = Uri.parse(BASE_URL + '/init/user');
    await http.get(uri).then((res) {
      print(res.statusCode);
      print(res.headers);
      print(res.body);
      print("게또구분자값------------");

      Map<String, dynamic> bodyMap = convert.jsonDecode(res.body);
      ResponseUser fetch = ResponseUser.fromJson(bodyMap);
      print(fetch);
    }, onError: (error) {
      print("실패사유 : $error");
    });
  }

  joinUser() async {
    var uri = Uri.parse(BASE_URL + "/join");
    var requestJoinUser = RequestUser(
        username: "lsw", password: "7777777", email: "lsw@naver.com");
    var requestHeaderMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var jsonEncodePost = convert.jsonEncode(requestJoinUser.toJson());

    await http
        .post(
      uri,
      body: jsonEncodePost,
      headers: requestHeaderMsg,
    )
        .then((res) {
      print(res.statusCode);
      print("userjoin구분자값-------------");
      print(res.body.runtimeType); // map > object
      // 응답 데이터 변환하기
      var resData = ResponseUser.fromJson(convert.jsonDecode(res.body));
      print("유저조인최종결과물");
      print(resData);
    }, onError: (error) {
      print(error);
    });
  } // end joinuser

  loginUser() async {
    var uri = Uri.parse(BASE_URL + "/login");
    var requestLoginUser = RequestUser(username: "lsw", password: "7777777");
    var requestHeaderMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var jsonEncodePost = convert.jsonEncode(requestLoginUser.toJson());

    await http.post(uri, body: jsonEncodePost).then((res) {
      print(res.statusCode);
      print("userLogin 구분자값-------------");
      print(res.body);
      print("${res.headers['authorization']}");

      token = res.headers['authorization'];

      Map<String, dynamic> resMap = convert.jsonDecode(res.body);
      // 응답 데이터 변환 꼬
      var resData = ResponseUser.fromJson(resMap["data"]);
      print("유저 로긴 최종 결과물");
      print(resData);
    }, onError: (error) {
      print(error);
    });
  }

  putUser() async {
    var uri = Uri.parse(BASE_URL + '/user/151');
    var requestPutObj =
        RequestUser(password: "123456", email: "hibye@rehi.com");
    var requestHeaderMsg = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': '$token'
    };

    var jsonEncodePut = convert.jsonEncode(requestPutObj.toJsonPutUser());

    await http
        .put(uri, body: jsonEncodePut, headers: requestHeaderMsg)
        .then((res) {
      print(res.statusCode);
      print("put구분자값!@#!#@!#");
      print(res.body.runtimeType);
      print(res.body);

    });
  }
} //class end
