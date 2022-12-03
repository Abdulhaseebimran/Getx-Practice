import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondsPage extends StatelessWidget {
  const SecondsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seconds Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("GO Back"))
          ],
        ),
      ),
    );
  }
}
