import 'package:flutter/material.dart';
import 'package:todo_app/todo_model.dart';

class ToDoProvider extends ChangeNotifier {
  List<ToDoModel> items = [
    ToDoModel("Buy a elephant", "at the zoo", false),
    ToDoModel("learn flutter", "to get a job", false),
    ToDoModel("Sell my wife", "for a good price", false),
  ];

  void updateStatus(int index, bool isChecked) {
    items[index].isDone = isChecked;
    notifyListeners();
  }
}
