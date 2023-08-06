import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do_list/app/data/service/storage/service.dart';
import 'package:to_do_list/app/modules/home/view.dart';

main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'To Do List',
      home: HomePage(),
    );
  }
}
