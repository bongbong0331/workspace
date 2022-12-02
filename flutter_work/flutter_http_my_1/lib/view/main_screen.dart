import 'package:flutter/material.dart';
import 'package:flutter_http_my_1/view/header.dart';
import 'package:flutter_http_my_1/view/posts_info.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.2, 1.0],
          colors: [
            Colors.redAccent,
            Colors.teal,
          ],
          begin: FractionalOffset.center,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Header(),
            PostsInfo()
          ],
        ),
      ),
    );
  }
}
