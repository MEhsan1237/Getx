

  import 'package:get/get.dart';

  class CounterClass  extends GetxController{
    RxInt counter = 0.obs;

    setCounter(){
    return  counter.value++;
    }

  }