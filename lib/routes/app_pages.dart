import 'package:get/get.dart';
import 'package:pundi_apps/ui/splashscreen/splash_screen_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreenPage(),
    ),
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
  ];
}
