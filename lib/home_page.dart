import 'package:dart_streams/home_page_conroller.dart';
import 'package:dart_streams/secound_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final MyHomePageController controller;

  MyHomePage({
    Key? key,
  })  : controller = Get.put(MyHomePageController()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Observable"),
      ),
      body: Center(
        child: Obx(()=> Text("Hello world ${controller.count}")),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              controller.count.value++;
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.forward_outlined),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySecoundPage()));
            },
          ),
        ],
      ),
    );
  }
}
