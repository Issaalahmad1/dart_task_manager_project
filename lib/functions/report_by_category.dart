import 'package:task_management/classes/task.dart';

void reportByCategory(List<Task> tasks) {
  Map<String, int> counts = {};
  Set<String> categories = {};

  for (var task in tasks) {
    categories.add(task.category);
    counts[task.category] = (counts[task.category] ?? 0) + 1;
  }
  print("***********************");
  print("The categories is: $categories");
  print("Report:");
  counts.forEach((cat, count) {
    print("$cat: $count tasks");
  });
}
