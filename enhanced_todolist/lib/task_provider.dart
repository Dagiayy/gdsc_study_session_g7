import 'package:flutter/material.dart';
import 'task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(int index, Task updatedTask) {
    _tasks[index] = updatedTask;
    notifyListeners();
  }

  void completeTask(int index) {
    _tasks[index].isCompleted = true;
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
