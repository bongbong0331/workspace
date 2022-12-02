import 'package:flutter/material.dart';
import 'package:http_ex1/pages/init_posts_page.dart';
import 'package:http_ex1/pages/init_users_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: InitUsersPage(),
      home: InitPostsPage(),
    );
  }
}
