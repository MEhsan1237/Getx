


import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageChangeScreen extends GetxController{

  RxString imagePath = ''.obs;

  Future setImagePicker()async{
     final ImagePicker picker = ImagePicker();
     final image = await picker.pickImage(source: ImageSource.gallery);
     if(image!=null){
       imagePath.value = image.path.toString();
     }
   }

}