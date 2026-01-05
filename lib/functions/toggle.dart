import 'dart:io';

import 'package:task_management/classes/task.dart';

void toggleTaskById(List<Task> tasks,) {
  print("Please Enter The id to toggle:");
  String? idInput = stdin.readLineSync();
  try {
    int id = int.parse(idInput!);
    int index = tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      tasks[index].toggle();
      print("The Task id ($id) is Toggled successfully.");
    } else {
      print("The Task id ($id) not found in the list tasks.");
    }
  } catch (e) {
    print(
      "The Task id ($idInput) is invalid.Please try again with valid number id.",
    );
  }
}
