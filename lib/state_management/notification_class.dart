

import 'package:get/get.dart';

class NotificationChangesScreen extends GetxController{
  RxBool notification = true.obs;

  setNotification(bool value2){
    notification.value = value2;
  }
}