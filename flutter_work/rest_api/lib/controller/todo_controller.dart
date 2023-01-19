

import 'package:rest_api/models/todo.dart';
import 'package:rest_api/repository/repository.dart';
import 'package:rest_api/repository/todo_repository.dart';

class TodoController{

  final Repository _repository;

  TodoController(this._repository);

  // select

  // patch

  // put

  // delete
  Future<String> deleteTodo(Todo todo1) async {

    return _repository.deletedTodo(todo1);
  }



  // post

}