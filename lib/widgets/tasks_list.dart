import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            itemCount: taskdata.taskCount,
            itemBuilder: (context, index) {
              final task = taskdata.tasks[index];
              return TaskTile(
                  text: task.text,
                  isChecked: task.done,
                  longPressCallback: () {
                    taskdata.deleteTask(task);
                  },
                  checkboxCallback: (isChecked) {
                    taskdata.toggleDone(task);
                  });
            });
      },
    );
  }
}
