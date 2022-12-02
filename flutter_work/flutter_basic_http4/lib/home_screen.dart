import 'package:flutter/material.dart';
import 'package:flutter_basic_http4/constants.dart';
import 'package:flutter_basic_http4/models/request_post.dart';
import 'package:flutter_basic_http4/models/response_post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'models/todo.dart';
// 문맥키워드 여러라이브러리 있기에 별칭으로 쓰는법~ 내부충돌때문에 쓰는게 좋을것임

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              fetchgetTodo();
              // createPost();
              // putPost(100);
              // deletePost(100);
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  fetchgetTodo() async {
    var uri = Uri.parse(BASE_URL + "/todos");
    await http.get(uri).then((res) {
      print(res.statusCode);
      print(res.headers);
      print("구분자값11111111111");
      // 1. String --> 변환 (c.jsonDec..) --> Map<String, dynamic> --> object
      Map<String, dynamic> bodyMap = convert.jsonDecode(res.body);
      // 반복문이 <--- 리스트 타입이라면
      Todo todo = Todo.fromJson(bodyMap);
      print(todo);
    }, onError: (error) {
      print("실패 사유 : $error");
    });
  }

  createPost() async {
    var uri = Uri.parse(BASE_URL + "/posts");
    var requestPostObj = RequestPost(title: "홍길동", body: "날라차기", userId: 10);
    var requestHeaderMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var requestBodyMap = {
      'title': 'foo',
      'body': 'bar',
      'userId': 1,
    };
    // object ---> json 형식으로 변경
    // object ---> map ---> json 으로 변경해야 함 !!!!!!!꼭기억해!!!!!!

    Map<String, dynamic> objectToMap = {
      "title": requestPostObj.title,
      "body": requestPostObj.body,
      "userId": requestPostObj.userId
    };

    // var jsonEncodePost = convert.jsonEncode(objectToMap);
    var jsonEncodePost = convert.jsonEncode(requestPostObj.toJson());

    await http
        .post(
      uri,
      body: jsonEncodePost,
      headers: requestHeaderMsg,
    )
        .then((res) {
      print(res.statusCode);
      print(" 구분자값포스트");
      print(res.body.runtimeType); // -> map -> object
      // 응답 데이터 변환
      var resData = ResponsePost.fromJson(convert.jsonDecode(res.body));
      print("최종결과물");
      print(resData);
    }, onError: (error) {
      print(error);
    });
  }

  putPost(var id) async{
    var uri = Uri.parse(BASE_URL + '/posts/$id');
    var requestPutObj =
        RequestPost(id: 1, title: "리밍밍", body: "후려치기", userId: 10);
    var requestHeaderMsg = {'Content-type': 'application/json; charset=UTF-8'};


    // Map<String, dynamic> objectToMap = {
    //   'id': requestPutObj.id,
    //   'title': requestPutObj.title,
    //   'body': requestPutObj.body,
    //   'userId': requestPutObj.userId
    // };

    var jsonEncodePut = convert.jsonEncode(requestPutObj.toJson());

    // .put rest api
    await http.put(uri, body: jsonEncodePut, headers: requestHeaderMsg).then((res){
      print(res.statusCode);
      print("put구분자값!!");
      print(res.body.runtimeType);
      print(res.body);
      // 응답 데이터 변환
      var resData = ResponsePost.fromJson(convert.jsonDecode(res.body));
      print("put 최종 결과물");
      print(resData);
    },onError: (error){
      print(error);
    }
    );
  }

  deletePost(var id) async{
    var uri = Uri.parse(BASE_URL + '/posts/$id');

    await http.delete(uri).then((res) {
      print(res.statusCode);
      print(res.headers);
      // 문제 1 content-length 키로 한 쌍으로 이루어진 값을 뽑아 보세요 !!!
      print(res.headers.runtimeType); // -> map, map['content-length]
      print(res.headers['content-length']);

      // 박스 센터로 옮기기

      print(res.body);
      print('delete 끝');
    });

  }


}
