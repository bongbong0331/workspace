

import 'package:flutter_http_basic_1/models/user.dart';

abstract class Repository{

  Future<User>getUser(int id);
  // 추상 메서드를 선언하게 강제성을 부여함.
}