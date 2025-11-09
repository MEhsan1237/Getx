import 'package:flutter/material.dart';

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
        children: [
          Text("One Screen",style: TextStyle(color: Colors.deepPurple),)
        ],
      ),),
    );
  }
}
