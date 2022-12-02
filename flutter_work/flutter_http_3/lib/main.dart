import 'package:flutter/material.dart';
import 'package:flutter_http_3/models/todo.dart';
import 'package:flutter_http_3/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // fetchTodos();
    fetchUsers();


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.purple[300],
        ),
      ),
    );
  }


  // fetchPhotos() async {
  //   List<Todo> todoList = [];
  //   var uri = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  //   var response = await http.get(uri);
  //   if(response.statusCode == 200){
  //     List listData = convert.jsonDecode(response.body);
  //     for
  //   }
  // }
  
  fetchUsers() async {
    List<User> userList =[];
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(uri);
    if(response.statusCode == 200){
      List<dynamic> list = convert.jsonDecode(response.body);
      for (var element in list) {
        userList.add(User.fromJson(element));
      }
    }else{
      throw Exception("fail load : ${response.statusCode}");
    }
    for(var i=0; i<2; i++){
      print(userList[i]);
      print("--------------------");
    }
  }


  fetchTodos() async {
    List<Todo> todoList = [];
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    var response = await http.get(uri);
    if(response.statusCode == 200){
      List listData = convert.jsonDecode(response.body);
      for (var e in listData) {
       // print("data Type check : ${e.runtimeType}");
       // print("data : ${e}");
       // print("===============================");
       // e[key]
       // {userId: 10, id: 200, title: ipsam aperiam voluptates qui, completed: false}
       // todoList.add(Todo(userId: e["userId"], id: e["id"], title: e["title"], completed: e["completed"]));
       // Todo todo = Todo.init(userId: e["userId"], title: e["title"], completed: e["completed"]);
       // Todo.fromJson(e);


       todoList.add(Todo.fromJson(e));
      }
    }

    // print("통신 끝나고 자료구조에 데이터 담음1");
    // print(todoList.length);
    // print(todoList);
  }
}
