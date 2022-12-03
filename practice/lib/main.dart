import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';
import 'routes/get_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: GetAppRoutes().getRoutes(),
      initialRoute: AppRoutes.initial,
    );
  }
}

