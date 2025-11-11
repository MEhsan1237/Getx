import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_class.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterClass controller = Get.put(CounterClass());

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("hi");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.setCounter();
        },
      ),
      body: Obx(() {
        if (kDebugMode) {
          print("hello");
        }
        return Center(child: Text(controller.counter.value.toString(),style: TextStyle(fontSize: 20),),);
      },)
    );
  }
}
