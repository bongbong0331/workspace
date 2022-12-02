import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        children: [
          MyButton(),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("Mybutton was tapped");
      },
      child: Container(
        padding: const EdgeInsets.all(8.0), // 어케한거
        margin:  const EdgeInsets.symmetric(horizontal: 8.0),
        height: 50.0,
        child: Center(child: Text("myButton", style: TextStyle(fontSize: 16),)), // 알트 엔터 center
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[200]
        ),
      ),
    );
  }
}
