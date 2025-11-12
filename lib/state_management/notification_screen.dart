import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/state_management/notification_class.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  NotificationChangesScreen controller = Get.put(NotificationChangesScreen());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("hi");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Screen"),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Notification",style: TextStyle(fontSize: 30),),
         Obx(() =>   Switch(
             value: controller.notification.value, onChanged: ( bool value2){
              if (kDebugMode) {
                print("hello");
              }
           controller.setNotification(value2);
         }),)
        ],
      ),
    );
  }
}
