import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(text: 'Lavar banheiro'),
    Task(text: 'Varrer Casa'),
    Task(text: 'Temperar Frango'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
              text: tasks[index].text,
              isChecked: tasks[index].done,
              checkboxCallback: (isChecked) {
                setState(() {
                  tasks[index].toggleDone();
                });
              });
        });
  }
}
