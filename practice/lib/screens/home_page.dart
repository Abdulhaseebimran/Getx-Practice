import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/routes/app_routes.dart';
import 'package:practice/screens/second_page.dart';

import '../controller/counter_controller.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "Counter Value: ${controller.counter.value}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              );
            }),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.secondPage);
                  // Get.to(SecondsPage());

                  // Get.off(SecondsPage());
                  // Get.offNamed(AppRoutes.secondPage);

                  // Get.offAll(AppRoutes.secondPage); // pechle sare pages ko hata deta hey
                  // Get.offAllNamed(AppRoutes.secondPage);

                  // Get.back();
                },
                child: const Text(
                  "Go to the Second Page",
                )),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Confirm Dialog",
                  middleText: "Are you sure you want to delete this item?",
                  textConfirm: "Yes",
                  textCancel: "No",
                  confirmTextColor: Colors.white,
                  cancelTextColor: Colors.red,
                  backgroundColor: Colors.lightBlueAccent,
                  onConfirm: () {
                    Get.back();
                  },
                  onCancel: () {
                    Get.back();
                  },
                  middleTextStyle: const TextStyle(fontSize: 20),
                );
              },
              child: const Text("Show Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
