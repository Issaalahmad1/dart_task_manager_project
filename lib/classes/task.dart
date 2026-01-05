import 'package:task_management/classes/printable.dart';

class Task implements Printable {
  final int _id;
  final String title;
  final String category;
  bool done = false;
  Task(this._id, this.title, this.category);
  Task.quick(this._id, this.title) : category = 'general';
  int get id => _id;
  void toggle() => done = !done;

  @override
  String format() {
    String status = done ? '√' : '×';
    return '[$status] ($id) $title - $category';
  }
}
