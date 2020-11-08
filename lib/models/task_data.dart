import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/Task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(text: "Buy Bread"),
    Task(text: "Buy Eggs"),
    Task(text: "Buy Milk"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int get taskCount => tasks.length;
}
