import 'package:get/get.dart';

import '../ui/main/main_page.dart';
import '../ui/main/splash.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
  ];
}
