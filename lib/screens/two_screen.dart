import 'package:flutter/material.dart';

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
        children: [
          Text("Two Screen",style: TextStyle(color: Colors.red),)
        ],
      ),),
    );
  }
}
