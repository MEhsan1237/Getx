import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/screens/two_screen.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("One Screen"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("One Screen",style: TextStyle(color: Colors.deepPurple),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                foregroundColor: Colors.white,

                ),
                onPressed: (){
              Get.toNamed("/twoScreen");
            }, child: Center(child: Text("click here"))),
          )
        ],
      ),),
    );
  }
}
