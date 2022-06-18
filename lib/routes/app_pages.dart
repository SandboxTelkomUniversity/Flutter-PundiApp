import 'package:get/get.dart';
import 'package:pundi_apps/ui/method/method_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.method;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.method,
      page: () => const MethodPage(),
    ),
  ];
}
