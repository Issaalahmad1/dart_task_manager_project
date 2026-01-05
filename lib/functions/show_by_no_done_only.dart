import 'package:task_management/classes/task.dart';

void showByNotDoneOnly(List<Task> tasks) {
  var tasksDone = tasks.where((task) => task.done == false);
  if (tasksDone.isEmpty) {
    print("your complete all tasks");
    return;
  }
  print("Not Completed Tasks is:");
  for (var task in tasksDone) {
    print(task.format());
  }
}
