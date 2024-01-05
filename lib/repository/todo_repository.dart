import 'dart:convert';
import 'package:cubit_app/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  Future<List<Todo>> getAll() async {
    const url = 'https://jsonplaceholder.typicode.com/todos';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final result = json.map((e) {
        return Todo(
          id: e['id'],
          userId: e['userId'],
          title: e['title'],
          completed: e['completed'],
        );
      }).toList();
      return result;
    } else {
      throw "There was an error ${response.statusCode}";
    }
  }
}