import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskData = [
    Task(text: 'Lavar banheiro'),
    Task(text: 'Varrer Casa'),
    Task(text: 'Temperar Frango'),
  ];

  addTaskTolist(String title) {
    _taskData.add(Task(text: title));
    notifyListeners();
  }

  toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _taskData.remove(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_taskData);

  int get taskCount => _taskData.length;
}
