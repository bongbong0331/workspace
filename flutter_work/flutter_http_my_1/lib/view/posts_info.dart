import 'package:flutter/material.dart';
import 'package:flutter_http_my_1/controller/posts_controller.dart';
import 'package:flutter_http_my_1/repository/posts_repository.dart';



class PostsInfo extends StatelessWidget {
  PostsInfo({Key? key}) : super(key: key);

  // DI = Dependency Injection 가지고 와서 쓰다
  final _controller = PostsController(PostsRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot){
      var posts = snapshot.data;
      if(posts == null || snapshot.connectionState != ConnectionState.done){
        return Center(child: CircularProgressIndicator(color: Colors.white,),);
      }
      return Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.purpleAccent,
          fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          child: Column(
            children: [
              Text(posts.userId.toString()),
              Text(posts.id.toString()),
              Text(posts.title),
              Text(posts.body),

            ],
          ),
        ),
      );

    }, future: _controller.fetchPosts(1),);
  }
}
