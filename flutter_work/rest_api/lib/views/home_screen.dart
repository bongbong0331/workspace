import 'package:flutter/material.dart';
import 'package:rest_api/controller/todo_controller.dart';

import '../repository/todo_repository.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var todoController = TodoController(TodoRepository());



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("home screen"),
    );
  }
}
