

import 'package:flutter_http_my_1/models/posts.dart';
import 'package:flutter_http_my_1/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




class PostsRepository implements Repository{
  String dataURL = "https://jsonplaceholder.typicode.com/posts";

  @override
  Future<Posts> getPosts(int userId) async{
    var url = Uri.parse(dataURL + "$userId");
    var response = await http.get(url);
    var body = response.body;
    return Posts.fromJson(json.decode(body));

  }



}