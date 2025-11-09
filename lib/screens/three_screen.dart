import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("three Screen"),
        backgroundColor: Colors.deepOrange,centerTitle: true,

      ),
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Three Screen",style: TextStyle(color: Colors.red),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.black,
                ),
                onPressed: (){
                  Get.back();
                  Get.back();
                }, child: Center(child: Text("click also here"))),
          )
        ],
      ),),
    );
  }
}
