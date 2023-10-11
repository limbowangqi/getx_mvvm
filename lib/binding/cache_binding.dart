import 'package:get/get.dart';
import 'package:demo_getx/viewmodel/cache_vm.dart';

class CacheBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CacheViewModel());
  }
}