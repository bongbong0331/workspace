import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            Text(
              "여자",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          Spacer(),
            Text(
              '어린이',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
                "신발",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
            ),
            Expanded(child: Image.asset("assets/buck.jpg", fit: BoxFit.fill,)),
            SizedBox(height: 2,),
            Expanded(child: Image.asset("assets/goat.jpg", fit: BoxFit.fill,)),
          ],
        ),
        ],
      ),
    ),);
  }
}

