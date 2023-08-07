import 'dart:convert';

import 'package:get/get.dart';
import 'package:to_do_list/app/core/utils/keys.dart';
import 'package:to_do_list/app/data/models/task.dart';
import 'package:to_do_list/app/data/service/storage/service.dart';

class TaskProvider {
  // private variable used final keyword
  final StorageService _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    // json decode, read data from local storage which the 'taskKey'
    // then parse into string using jsonDecode
    jsonDecode(_storage.read(taskKey).toString())
        // then map the individual value, convert to array of <Task>
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
