import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class InitPostsPage extends StatefulWidget {
  const InitPostsPage({Key? key}) : super(key: key);

  @override
  State<InitPostsPage> createState() => _initPostsPageState();
}

class _initPostsPageState extends State<InitPostsPage> {

  @override
  void initState() {
    // TODO: implement initState
    fetchPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('사용자조회'),
      ),
      body: ListView(
        children: [
          Text("전체 게시글 목록 조회"),
        ],
      ),
    );
  }


  fetchPostList() async{
    //http://lalacoding.site/init/post
    // var endPoint = "/post";
    
    var uri = Uri.parse("http://lalacoding.site/init/post");
    var response = await http.get(uri);
    print(response.statusCode);
    // 방어적 코드
    if(response.statusCode == 200){
      print("리스폰스 바디 시작");
      print(response.body.runtimeType);
      print(response.body);
      // convert 를 사용하면 map 구조로 변환이 된다 !
      var jsonRes = convert.jsonDecode(response.body) as Map<String, dynamic>;
      print("11111111111111111111");
      // map['code'] < value
      print(jsonRes.runtimeType);
      // print(jsonRes);

      jsonRes.forEach((key, value) {
        // print("forEach----------------------------------");
        // print("$key");
        // print("$value");
        // print("value : ${jsonRes['$key']}");


        if(key == 'data'){
          // print("data > if문시작----");
          // print(jsonRes['data']);
          // print(jsonRes['$key'].runtimeType);

          List list = jsonRes['$key'];

          list.forEach((e) {
            print("forEach시작---------");
            // print(e.runtimeType);
            // print(e['user']);

          Map map = e['user'];
          print(map['email']);
          print(map['username']);

          });
        } // data if 끝



        // if(key == 'user'){
        //   print('user if 시작--------');
        //   print(jsonRes['$key'].runtimeType);
        // }




      }
      ); //forEach
    } //
    
    
  }








}
