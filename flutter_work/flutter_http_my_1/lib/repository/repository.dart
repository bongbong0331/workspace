

import '../models/posts.dart';

abstract class Repository{


  Future<Posts>getPosts(int userId);

}