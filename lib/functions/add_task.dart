import 'dart:io';

import 'package:task_management/classes/task.dart';

void addTask(List<Task> tasks, int id) {
  print("Title: ");
  String? title = stdin.readLineSync() ?? '';
  print("category: ");
  String? category = stdin.readLineSync() ?? '';
  if (title.trim().isNotEmpty && category.trim().isNotEmpty) {
    tasks.add(Task(id, title, category));
    print(
      "successfully added the task.(id: $id, title: $title, category: $category)",
    );
  } else {
    print(
      "Failed added the task. are you sure entered valid title and valid category?",
    );
  }
}
