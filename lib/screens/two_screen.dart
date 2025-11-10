import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Screen"),backgroundColor: Colors.green,centerTitle: true,
      ),
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Two Screen",style: TextStyle(color: Colors.red),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                ),
                onPressed: (){
              Get.toNamed("/threeScreen"
                  ,arguments: {
                    "name":"ehsan",
                    "age" : "19"
                  });
            }, child: Center(child: Text("click also here"))),
          )
        ],
      ),),
    );
  }
}
