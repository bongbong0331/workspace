import 'package:basic_http_flutter_2/pages/init_posts_page.dart';
import 'package:basic_http_flutter_2/pages/init_users_page.dart';
import 'package:flutter/material.dart';

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
