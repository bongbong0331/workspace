import 'package:flutter/material.dart';
import 'package:project/components/menu_item.dart';
import 'all_menu_page.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MenuPage(),
    );
  }
}



