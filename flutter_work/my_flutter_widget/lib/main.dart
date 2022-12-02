import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //1
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Stack( //css 식으로 쌓인다 !
          children: [
            Positioned( // 절대좌표
              left: 150.0,
              bottom: 200.0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
