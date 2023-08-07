import 'package:to_do_list/app/data/models/task.dart';
import 'package:to_do_list/app/data/providers/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();

  void writeTAsks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
