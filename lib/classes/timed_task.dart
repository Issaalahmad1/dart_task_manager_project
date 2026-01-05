import 'package:task_management/classes/task.dart';

class TimedTask extends Task {
  final DateTime dueDate;

  TimedTask(super.id, super.title, super.category, this.dueDate);
  @override
  String format() {
    String parentFormat = super.format();
    return '$parentFormat (Due: ${dueDate.year}-${dueDate.month}-${dueDate.day})';//يمكن استخدام دالة toIso للتنسيق
  }
}
