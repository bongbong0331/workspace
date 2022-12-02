import 'package:flutter/material.dart';
import 'package:my_flutter_login/pages/home_page.dart';
import 'package:my_flutter_login/pages/login_page.dart';

void main() {
// 화면 이동을 위한 Routes
// 경로 (/a/b/c)

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login", //이니셜라우트첫번째페이지지정(이건프로토콜임)
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(), //3
      },
    );
  }
}
