import 'package:get/get.dart';

class CacheViewModel extends GetxController {
  CacheType type = CacheType.OFFLINE;
  var cacheString = "".obs;

  String _onlineData =
      "GetX 可以缓存内容对象，以便在不同页面共享数据。使用的时候需要注意，需要先 put 操作再 find操作，否则会抛异常。\nGet.put(CacheData(name: '这是缓存数据'));\nCacheData cache = Get.find()";

  String _offlineData =
      "GetX 提供了一个 get_storage 插件用于离线存储，与 shared_preferences 相比，其优点是纯 Dart 编写，不依赖于原生，因此可以在安卓、iOS、Web、Linux、Mac 等多个平台使用。GetStorage 是基于内存和文件存储的，当内存容器中有数据时优先从内存读取。同时在构建 GetStorage 对象到时候指定存储的文件名以及存储数据的容器。\nGetStorage storage = GetStorage();\nstorage.write('name', '岛上码农');\nstorage.read('name');";

  setCacheType(CacheType t) {
    type = t;
     if(t == CacheType.OFFLINE){
      cacheString.value = _offlineData;
    }else{
      cacheString.value = _onlineData;
    }
  }
 
}

enum CacheType { OFFLINE, ONLINE }
