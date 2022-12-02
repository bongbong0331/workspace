import 'package:flutter/material.dart';
import 'package:flutter_http_my_1/view/main_screen.dart';

void main() {
  runApp(const MyExApplication());
}


class MyExApplication extends StatelessWidget {
  const MyExApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter http ex demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MainScreen(),
    );
  }
}
