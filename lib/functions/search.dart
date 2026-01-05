import 'dart:io';

import 'package:task_management/classes/task.dart';

void searchByKeyword(List<Task> tasks) {
  print("Enter the text to search in tasks by title or category");
  String? keyWord = stdin.readLineSync();
  try {
    for (var task in tasks) {
      if (task.title.contains(keyWord!) || task.category.contains(keyWord)) {
        print(task.format());
      }
    }
  } catch (e) {
    print("The Keyword is invalid.\nPlease enter a valid keyword.");
  }
}
