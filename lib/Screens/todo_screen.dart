import 'package:flutter/material.dart';
import 'package:ostad_rafat/Screens/add_new_todo.dart';
import 'package:ostad_rafat/Screens/todo.dart';
import 'package:ostad_rafat/Screens/update_todo.dart';

class todoScreen extends StatefulWidget {
  const todoScreen({super.key});

  @override
  State<todoScreen> createState() => _todoScreenState();
}

class _todoScreenState extends State<todoScreen> {
  final List<Todo> listofTodo = [];

  void _addTodo(Todo todo) {
    listofTodo.add(todo);
    setState(() {});
  }

  void _deleteTodo(int index) {
    listofTodo.removeAt(index);
    setState(() {});
  }

  void _updateTodo(int index, Todo todo) {
    listofTodo[index] = todo;
    setState(() {});
  }

  void _updateTodoStatus(int index, TodoStatus status) {
    listofTodo[index].status = status;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do List')),
      body: Visibility(
        visible: listofTodo.isNotEmpty,
        replacement: Center(child: Text("Empty List")),
        child: ListView.builder(
            itemCount: listofTodo.length,
            itemBuilder: (context, index) {
              Todo todo = listofTodo[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text(todo.description),
                leading: Text(todo.status.name),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {
                          _deleteTodo(index);
                        },
                        icon: Icon(Icons.delete)),
                    IconButton(
                        onPressed:() => _showStatusDialog(index), icon: Icon(Icons.edit)),
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => updateTodo(todo:todo,
                        onUpdateTodo: (Todo updateTodo) {
                          _updateTodo(index, updateTodo);
                        },
                      )));
                },
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Todo? todo = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddNewTodo()));
          if (todo != null) {
            _addTodo(todo);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showStatusDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Change Status"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("Idle"),
                onTap: () {
                  _onTapUpdateStatus(index, TodoStatus.idle);
                },
              ),
              const Divider(
                height: 0,
              ),
              ListTile(
                title: const Text("In Progress"),
                onTap: () {
                  _onTapUpdateStatus(index, TodoStatus.inProgress);
                },
              ),
              const Divider(
                height: 0,
              ),
              ListTile(
                title: Text("Done"),
                onTap: () {
                  _onTapUpdateStatus(index, TodoStatus.done);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _onTapUpdateStatus(int index, TodoStatus status) {
    _updateTodoStatus(index, status);
    Navigator.pop(context);
  }
}
