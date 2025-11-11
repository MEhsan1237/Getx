



import 'package:get/get.dart';

class OpacityChangesClass extends GetxController{

  RxDouble opacity = 1.0.obs  ;
  setOpacity(double value2){
    opacity.value = value2 ;
  }
}