import 'package:flutter/material.dart';

class AddNewTodo extends StatefulWidget {
  const AddNewTodo({super.key});

  @override
  State<AddNewTodo> createState() => _AddNewTodoState();
}

class _AddNewTodoState extends State<AddNewTodo> {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _descriptionEditingController = TextEditingController();
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();

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
          title: Text('Add New Todo'),
        ),
          body: Form(
            key: _formState,
            onChanged: () {
              setState(() {});
            },
            child: Column(
              children: [
                TextFormField(
                  controller: _titleEditingController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    hintText: 'Enter a title for your todo',
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  controller: _descriptionEditingController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                      labelText: 'Description',
                      hintText: 'Enter description for your todo'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Add")),
              ],
            ),
          )
      ),
    );
  }
}