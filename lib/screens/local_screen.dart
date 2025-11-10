import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalScreen extends StatefulWidget {
  const LocalScreen({super.key});

  @override
  State<LocalScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local App Screen"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('name'.tr),
              subtitle: Text('age'.tr),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('en_Us'));
                }, child: Text("English")),
                OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('ur_Pk'));
                }, child: Text("Urdu")),

              ],
            )
          ],
        ),
      ),

    );
  }
}
