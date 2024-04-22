import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/screen_two.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({
    super.key,
    this.name,
  });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            "Screen ${Get.arguments[0]}",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(const ScreenTwo());
                // Navigator.pop(context);
              },
              child: const Text("Go to screen two!"),
            ),
          ],
        ),
      ),
    );
  }
}
