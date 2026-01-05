import 'dart:io';

import 'package:task_management/classes/task.dart';
import 'package:task_management/classes/timed_task.dart';

void addTimedTask(List<Task> tasks, int id) {
  print("Title: ");
  String? title = stdin.readLineSync() ?? '';
  print("Category: ");
  String? category = stdin.readLineSync() ?? '';
  print("Date: YYYY-MM-dd: ");
  String? date = stdin.readLineSync();
  try {
    DateTime due = DateTime.parse(date!);
    tasks.add(TimedTask(id, title, category, due));
    print("Date Task added Succesfully.");
  } catch (e) {
    print("Invalid date format please Enter date in this format YYYY-MM-DD");
  }
}
