import 'package:flutter/material.dart';
import 'package:rest_api/views/home_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "make rest api",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange[100],
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          centerTitle: true
        ),
      ),
      home: HomeScreen(),
    );
  }
}
