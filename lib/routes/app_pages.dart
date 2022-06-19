import 'package:get/get.dart';
import 'package:pundi_apps/ui/wait/wait_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.wait;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.wait,
      page: () => const WaitPage(),
    ),
  ];
}
