import 'package:task_management/classes/task.dart';

void showTasks(List<Task> tasks) {
  if (tasks.isEmpty) {
    print("The tasks is Empty.");
    return;
  }
  print("The all tasks is: ");
  

  for (var task in tasks) {
    print(task.format());
  }
}
