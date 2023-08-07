import 'package:get/get.dart';
import 'package:to_do_list/app/data/service/storage/repository.dart';

class HomeController extends GetxController {
  // controller need repository
  TaskRepository taskRepository;

  HomeController({required this.taskRepository});
}
