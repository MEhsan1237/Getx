
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/state_management/opacity_class.dart';


class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {

  OpacityChangesClass controller = Get.put(OpacityChangesClass());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("hi");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Screen"),backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>  Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(controller.opacity.value)
              ),
            ),),
            SizedBox(
              height: 20
              ,
            ),
            Obx(() =>  Slider(value: controller.opacity.value , onChanged: (value2){
              if (kDebugMode) {
                print("hello");
              }
              controller.setOpacity(value2);
            }),)
          ],
        ),
      ),
    );
  }
}
