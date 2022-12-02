import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class InitPostsPage extends StatefulWidget {
  const InitPostsPage({Key? key}) : super(key: key);

  @override
  State<InitPostsPage> createState() => _InitPostsPageState();
}

class _InitPostsPageState extends State<InitPostsPage> {

@override
  void initState() {
    // TODO: implement initState
    fetchPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("사용자조회"),
      ),
    );
  }
  
  
  
  
  
  
  
  
}
