import 'package:flutter/material.dart';
import 'package:http/http.dart' as mHttp;

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

// 화면에 버튼을 만들어 주세요
// 버튼을 누르면 통신하는 데이터를 화면에다가 뿌려주세요 !!

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var resText = "";

  @override
  Widget build(BuildContext context) {
    fetchData(3);
    // 포지셔널파라미터

    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(resText ?? ""),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                fetchData(3);
              });
            },
            child: Text("데이터 요청 버튼"),       //공부좀 하자;
          )
        ],
      ),
    );
  }

  /// 통신기능 하는 함수 만들기
  fetchData(int id) async {
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/users/$id");
    print("111111111111111");
    print(uri.runtimeType);
    // method 방식을 get 으로 처리

    //Http 메시지를 만들어서 요청을한다
    mHttp.Response response = await mHttp.get(uri);
    resText = response.body;
    print(response.runtimeType);
    print("222222222222222222222");
    print(response.body);
    print("333333333333333333");
    print(response.headers);
  }
}
