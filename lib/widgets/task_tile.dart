import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // const TaskTile({
  // }) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Tarefa 1',
        style: TextStyle(color: Colors.black),
      ),
      trailing: Checkbox(
        value: true,
      ),
    );
  }
}
