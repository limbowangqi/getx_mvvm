import 'package:demo_getx/global.dart';
import 'package:demo_getx/base/base_view.dart';
import 'package:demo_getx/viewmodel/cache_vm.dart';

class CachePage extends BaseView<CacheViewModel>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("缓存")),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Flex(direction: Axis.horizontal,
              children: [
                Expanded(child: ElevatedButton(child: Text('内存缓存'), onPressed: (){
                    viewModel.setCacheType(CacheType.ONLINE);
                })),
                Expanded(child: ElevatedButton(child: Text('离线缓存'), onPressed: (){
                    viewModel.setCacheType(CacheType.OFFLINE);
                })),
              ],
            ),
            // Text(controller.getCacheString())
            Obx(() => Text("${viewModel.cacheString}"))
          ],
        ),
      ),
    );
  }

}