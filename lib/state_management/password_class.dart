
import 'package:get/get.dart';

class PasswordController extends GetxController{
  RxBool isAvailAble = true.obs;
  setAvailAbleFun(){
    isAvailAble.value =! isAvailAble.value;
  }
}