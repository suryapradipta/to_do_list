import 'package:get/get.dart';
import 'package:to_do_list/app/data/providers/task/provider.dart';
import 'package:to_do_list/app/data/service/storage/repository.dart';
import 'package:to_do_list/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
