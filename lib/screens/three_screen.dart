import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  final textController = TextEditingController();
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
                  Get.bottomSheet(
                    backgroundColor: Colors.white,
                      Container(
                    child:ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("hi $index"),
                          subtitle: Text("hey"),
                        );
                      },),

                  ));
              },
              child: Text("click here"),
              // onPressed: (){
              //     Get.defaultDialog(
              //       title: "Edit The Text",
              //         content: TextFormField(
              //           controller: textController,
              //           decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(20)
              //             ),
              //
              //           ),
              //         ),
              //       confirm: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           OutlinedButton(onPressed: (){}, child: Text("yes bro")),
              //           SizedBox(width: 4,),
              //           OutlinedButton(onPressed: (){}, child: Text("no bro")),
              //         ],
              //       )
              //     );
              // }, child: Text("Click"),
              // onPressed: () {
              //   String username = "Ehsan";
              //
              //   if (username.isNotEmpty) {
              //     Get.snackbar(
              //       "Success",
              //       "Welcome $username!",
              //       snackPosition: SnackPosition.BOTTOM, // position: top/bottom
              //       backgroundColor: Colors.green,
              //       colorText: Colors.white,
              //       borderRadius: 10,
              //       margin: EdgeInsets.all(10),
              //       duration: Duration(seconds: 2),
              //       icon: Icon(Icons.check_circle, color: Colors.white),
              //     );
              //   } else {
              //     Get.snackbar(
              //       "Error",
              //       "Username is required!",
              //       snackPosition: SnackPosition.BOTTOM,
              //       backgroundColor: Colors.red,
              //       colorText: Colors.white,
              //       borderRadius: 10,
              //       margin: EdgeInsets.all(10),
              //       duration: Duration(seconds: 2),
              //       icon: Icon(Icons.error, color: Colors.white),
              //     );
              //   }
              // },
              // child: Text("Submit"),
            ),
          )
        ],
      ),),
    );
  }
}
