import 'package:get/get.dart';
import 'package:practice/routes/app_routes.dart';
import '../screens/home_page.dart';
import '../screens/second_page.dart';

class GetAppRoutes{

   List<GetPage> getRoutes(){
    return [
      GetPage(
        name: AppRoutes.initial,
        page: () => MyHomePage(title: 'Getx Routing'),
      ),
      GetPage(
        name: AppRoutes.secondPage,
        page: () => const SecondsPage(),
      ),
    ];
  }
}