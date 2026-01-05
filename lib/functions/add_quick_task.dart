import 'dart:io';

import 'package:task_management/classes/task.dart';

void addQuickTask(List<Task> tasks, int id) {
  print("Title: ");
  String? title = stdin.readLineSync() ?? '';
 
  if (title.trim().isNotEmpty) {
    tasks.add(Task.quick(id, title));
    print(
      "successfully added the quick task.(id: $id, title: $title, )",
    );
  } else {
    print(
      "Failed added the quick task. are you sure entered valid title ?",
    );
  }
}
