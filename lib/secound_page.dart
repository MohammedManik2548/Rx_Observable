import 'package:dart_streams/home_page_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MySecoundPage extends StatelessWidget {
  const MySecoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyHomePageController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(()=> Text('${controller.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: (){
          controller.count.value--;
        },
      ),
    );
  }
}
