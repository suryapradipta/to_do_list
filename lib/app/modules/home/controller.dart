import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:to_do_list/app/data/models/task.dart';
import 'package:to_do_list/app/data/service/storage/repository.dart';

class HomeController extends GetxController {
  // controller need repository
  TaskRepository taskRepository;

  HomeController({required this.taskRepository});

  /*
  * Dialog Form need a key so need to create on controller*/
  final formKey = GlobalKey<FormState>();
  final editController = TextEditingController();



  // start
  /*
  * render page whenever the task is changes, using obs*/
  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    // this method assign to the "final tasks = <Task>[].obs;"
    tasks.assignAll(taskRepository.readTasks());
    // each change will write to the tasks
    // then task will be shown in view
    ever(tasks, (_) => taskRepository.writeTAsks(tasks));
  }

  @override
  void onClose() {
    super.onClose();
  }

}
