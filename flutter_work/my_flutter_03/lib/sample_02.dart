import 'package:flutter/material.dart';


void main(){

  runApp(const MyApp());   //메인에서 요고 써야함

}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Container(
        child: Row( //배치관리자
          children: [
            Text("홍길동"),
            Text("이순신"),
            Expanded(child: FlutterLogo())
          ],
        ),
      ),
    );
  }
}
