import 'package:flutter/material.dart';
import 'package:ostad_rafat/Screens/todo.dart';

class updateTodo extends StatefulWidget {
  const updateTodo({super.key, required this.todo, required this.onUpdateTodo});

  final Todo todo;
  final Function(Todo) onUpdateTodo;

  @override
  State<updateTodo> createState() => _AddNewTodoState();
}

class _AddNewTodoState extends State<updateTodo> {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _descriptionEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _titleEditingController.text = widget.todo.title;
    _descriptionEditingController.text = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text('Update To-Do'),
          ),
          body: Form(
            key: _formKey,
            onChanged: () {
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _titleEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      hintText: 'Enter a title for your todo',
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Title is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _descriptionEditingController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                        labelText: 'Description',
                        hintText: 'Enter description for your todo'),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Description is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Todo todo = Todo(
                              title: _titleEditingController.text.trim(),
                              description:
                                  _descriptionEditingController.text.trim(),
                              status: widget.todo.status);
                          widget.onUpdateTodo(todo);
                          Navigator.pop(context);
                        }
                      },
                      child: Text("Update")),
                ],
              ),
            ),
          )),
    );
  }
}