import '../Screens/todo.dart';

class TodoManager {
  final List<Todo> _listofTodo = [];

  void addTodo(Todo todo) {
    _listofTodo.add(todo);
  }

  void deleteTodo(int index) {
    _listofTodo.removeAt(index);
  }

  void updateTodo(int index, Todo todo) {
    _listofTodo[index] = todo;
  }

  void updateTodoStatus(int index, TodoStatus status) {
    _listofTodo[index].status = status;
  }
}