import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  late Timer _timer;

  void increment() {
    counter.value++;

    // counter.value = counter.value + 1;
    //
    // counter(counter.value + 1);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("onINit");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      increment();
    });
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
}
