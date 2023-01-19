
import 'package:http/http.dart' as http;
import 'package:rest_api/repository/repository.dart';

import '../models/todo.dart';

class TodoRepository implements Repository{

String dataURL = 'https://jsonplaceholder.typicode.com';




@override
Future<String> deletedTodo(Todo todo) async{
  var uri = Uri.parse('$dataURL/todos/${todo.id}');
  var result = 'false';
  http.delete(uri).then((res) => {
    print("res : $res");
    return result = true;
  });
  return result;
}


@override
void patchCompleted(){

}
@override
void putCompleted(){

}


@override
void getTodoList(){

}


@override
void postTodo(){

}
}