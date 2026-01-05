import 'package:task_management/classes/task.dart';

void showByDoneOnly(List<Task> tasks) {
  var tasksNotDone = tasks.where((task) => task.done == true);
  if (tasksNotDone.isEmpty) {
    print("Not found completed task");
    return;
  }
  print("Completed Tasks is:");
  for (var task in tasksNotDone) {
    print(task.format());
  }
}
