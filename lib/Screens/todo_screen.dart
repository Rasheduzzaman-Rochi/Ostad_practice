import 'package:flutter/material.dart';
import 'package:ostad_rafat/Screens/add_new_todo.dart';

class todoScreen extends StatefulWidget {
  const todoScreen({super.key});

  @override
  State<todoScreen> createState() => _todoScreenState();
}

class _todoScreenState extends State<todoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do List')),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ListTile(
              title: Text('To-Do List'),
              subtitle: Text('description'),
              trailing: Text('Status'),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const AddNewTodo()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}