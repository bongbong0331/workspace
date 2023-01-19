import 'package:flutter/material.dart';
import 'package:yogiyo/screens/main_screens.dart';
import 'package:yogiyo/theme.dart';

void main() {
  runApp(const YogiyoUI());
}

class YogiyoUI extends StatelessWidget {
  const YogiyoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yogiyo',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: themeData(),
    );
  }
}
