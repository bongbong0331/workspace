

import '../models/todo.dart';

abstract class Repository{
  // 서버
  void getTodoList();
  void patchCompleted();
  void putCompleted();
  Future<String> deletedTodo(Todo todo);
  void postTodo();


}