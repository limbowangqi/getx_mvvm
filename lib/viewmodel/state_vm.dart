import 'package:get/get.dart';

class StateViewModel extends GetxController{

  var count = 0.obs;

  incrementCounter(){
    count.value ++;
  }

}
