import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/screen_one.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            "GetX",
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
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("GetX Dialog Alert With GetX!"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete",
                  middleText: "Are you sure you want to delete this chat??",
                  titlePadding: const EdgeInsets.only(top: 16),
                  contentPadding: const EdgeInsets.all(16),
                  confirm: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  cancel: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("GetX Bottom Sheet With GetX!"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.lightBlue,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.light_mode,
                          ),
                          title: const Text(
                            "Light Mode",
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.dark_mode,
                          ),
                          title: const Text(
                            "Dark Mode",
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(
                "/screenOne",
                arguments: [
                  "One",
                  "Mehedi Hasan",
                ],
              );
              // Get.to(
              //   const ScreenOne(
              //     name: "One",
              //   ),
              // );
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const ScreenOne()));
            },
            child: const Text("Go to next screen!"),
          ),
          TextButton(
              onPressed: () {
                Get.toNamed("/language");
              },
              child: const Text("Language Change Screen"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "GetX",
            "This is my first GetX project!",
            backgroundColor: Colors.green,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            icon: const Icon(
              Icons.warning,
              color: Colors.white,
            ),
            // animationDuration: const Duration(seconds: 5),
          );
        },
      ),
    );
  }
}
