import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagesChangeScreen extends StatefulWidget {
  const LanguagesChangeScreen({super.key});

  @override
  State<LanguagesChangeScreen> createState() => _LanguagesChangeScreenState();
}

class _LanguagesChangeScreenState extends State<LanguagesChangeScreen> {
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
            "Language Change",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(
                    const Locale("en", "US"),
                  );
                },
                child: const Text("English"),
              ),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(
                    const Locale("bn", "BD"),
                  );
                },
                child: const Text("Bangla"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
