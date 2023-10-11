import 'package:demo_getx/global.dart';

abstract class BaseView<T> extends StatelessWidget{
  
  T viewModel = Get.find<T>();

}