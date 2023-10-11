import 'package:demo_getx/global.dart';
import 'package:demo_getx/viewmodel/state_vm.dart';
import 'package:demo_getx/base/base_view.dart';

class StatePage extends BaseView<StateViewModel>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('状态管理')),
      body: Center(
        child: Obx(() => Text('click count = ${viewModel.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){viewModel.incrementCounter();},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
}