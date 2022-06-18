import 'package:get/get.dart';
import 'package:pundi_apps/ui/login/login_page.dart';
import 'package:pundi_apps/ui/onboarding/onboarding_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.onboarding;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
  ];
}
