import 'dart:io';

import 'package:task_management/classes/task.dart';
import 'package:task_management/functions/add_quick_task.dart';
import 'package:task_management/functions/add_task.dart';
import 'package:task_management/functions/add_timed_task.dart';
import 'package:task_management/functions/report_by_category.dart';
import 'package:task_management/functions/search.dart';
import 'package:task_management/functions/show.dart';
import 'package:task_management/functions/show_by_done_only.dart';
import 'package:task_management/functions/show_by_no_done_only.dart';
import 'package:task_management/functions/toggle.dart';

void main(List<String> arguments) {
  List<Task> tasks = [];
  int nextId = 1;
  while (true) {
    stdout.write(" Please enter the number or 'q' to quit: \n");
    print(" 1) Add task");
    print(" 2) Tdd quick task");
    print(" 3) Tdd timed task");
    print(" 4) Toggle task by id");
    print(" 5) Show All");
    print(" 6) Show done only");
    print(" 7) Show not done only");
    print(" 8) Report by category");
    print(" 9) Search by title or category");
    print(" q) quit");
    String? input = stdin.readLineSync();

    switch (input) {
      case 'q':
        print("Thank you for using My program.");
        return;
      case '1':
        addTask(tasks, nextId);
        nextId++;
        break;
      case '2':
        addQuickTask(tasks, nextId);
        nextId++;
        break;
      case '3':
        addTimedTask(tasks, nextId);
        break;
      case '4':
        toggleTaskById(tasks);
        break;
      case '5':
        showTasks(tasks);
        break;
      case '6':
        showByDoneOnly(tasks);
        break;
      case '7':
        showByNotDoneOnly(tasks);
        break;
      case '8':
        reportByCategory(tasks);
        break;
      case '9':
        searchByKeyword(tasks);
        break;
      default:
        print("Invalid input. Please try again with number or 'q' to quit.");
        continue;
    }
  }
}
