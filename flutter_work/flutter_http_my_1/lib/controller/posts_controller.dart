




import 'package:flutter_http_my_1/models/posts.dart';
import 'package:flutter_http_my_1/repository/repository.dart';

class PostsController{

  final Repository _repository;

  PostsController(this._repository);

  Future<Posts> fetchPosts(int userId) async{
    return _repository.getPosts(userId);
  }

}