import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/todo_app.dart';
import 'package:todo_app/todo_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ToDoProvider(),
      child: const ToDoApp(),
    ),
  );
}
