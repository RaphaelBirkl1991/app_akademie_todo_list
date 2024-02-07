import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/list_entry.dart';
import 'package:todo_app/todo_provider.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ToDoProvider>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ToDo-List",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: ListEntry(items: provider.items),
        ),
        backgroundColor: const Color.fromARGB(250, 234, 231, 222),
      ),
    );
  }
}
