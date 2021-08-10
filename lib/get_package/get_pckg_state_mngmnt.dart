import 'package:flutter/material.dart';
import 'get_result_page.dart';
import 'state_controller.dart';
import 'package:get/get.dart';

class GetState extends StatelessWidget {
  static const ROUTE_NAME = '/get_state';
  final String? name;
  const GetState({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StateController>(tag: 'counter1');

    return (Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Obx(() => Text('Count ${controller.number}')),
      ),
    ));
  }
}
