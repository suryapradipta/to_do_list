import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/app/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
