import 'package:get/get.dart';

class StateController extends GetxController {
  RxInt _number = 0.obs;

  RxInt get number => _number;

  void increment() {
    _number++;
  }
}
