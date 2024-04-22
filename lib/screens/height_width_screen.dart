import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidthScreen extends StatefulWidget {
  const HeightWidthScreen({super.key});

  @override
  State<HeightWidthScreen> createState() => _HeightWidthScreenState();
}

class _HeightWidthScreenState extends State<HeightWidthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            "Height Width",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            // height: MediaQuery.of(context).size.height * .3,
            height: Get.height * .3,
            width: Get.width * .7,
            child: const Center(
              child: Text("Red"),
            ),
          ),
          Container(
            color: Colors.green,
            // height: MediaQuery.of(context).size.height * .3,
            height: Get.height * .3,
            width: Get.width * .7,
            child: const Center(
              child: Text("Green"),
            ),
          ),
        ],
      ),
    );
  }
}
