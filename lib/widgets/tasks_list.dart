import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
              text: widget.tasks[index].text,
              isChecked: widget.tasks[index].done,
              checkboxCallback: (isChecked) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              });
        });
  }
}
