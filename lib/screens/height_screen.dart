import 'package:flutter/material.dart';
import 'package:get/get.dart';




class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Height Screen",),backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Get.height *0.8,
            width: Get.width *2,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text("Ehsan")),
          )
        ],
      ),),
    );
  }
}
