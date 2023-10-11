import 'package:demo_getx/global.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              child: Text('SnackBar'),
              onPressed: (){
                Get.snackbar("标题",'snackbar');
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                  child: Text('Dialog'),
                  onPressed: (){
                    Get.defaultDialog(
                      title: "标题",
                      content: Text('对话框内容'),
                      onConfirm: (){},
                      onCancel: () {},
                    );
                  },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                  child: Text('数据存储'),
                  onPressed: (){
                    Get.toNamed('/cache');
                  },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                  child: Text('主题颜色'),
                  onPressed: (){
                    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                  },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                  child: Text('状态管理'),
                  onPressed: (){
                    Get.toNamed('/state');
                  },
            ),
          ],
        )),
      ),
    );
  }
}

