import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/todo_model.dart';
import 'package:todo_app/todo_provider.dart';

class ListEntry extends StatelessWidget {
  final List<ToDoModel> items;

  const ListEntry({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ToDoProvider>(context);
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            selected: items[index].isDone,
            onTap: () {
              provider.updateStatus(index, !items[index].isDone);
            },
            leading: const Icon(Icons.woman),
            title: Text(items[index].title),
            subtitle: Text(items[index].text),
            trailing: Checkbox(
              onChanged: (bool? value) {
                provider.updateStatus(index, value!);
              },
              value: items[index].isDone,
            ),
          );
        });
  }
}
