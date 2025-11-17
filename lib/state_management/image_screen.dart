import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/state_management/image_class.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  ImageChangeScreen controller = Get.put(ImageChangeScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Screen"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:  Obx(() {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 40,
                  backgroundImage: controller.imagePath.isNotEmpty ?
                  FileImage(File(controller.imagePath.toString())):
                  null
              ),
              ElevatedButton(onPressed: () {
                controller.setImagePicker();
              }, child: Text("click Here", style: TextStyle(fontSize: 20),))
            ],
          ),
        );
      },)
    );
  }
}
