import 'package:get/get.dart';
import 'package:demo_getx/viewmodel/state_vm.dart';

class StateBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => StateViewModel());
  }
}