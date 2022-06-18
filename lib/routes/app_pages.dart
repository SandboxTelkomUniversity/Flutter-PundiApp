import 'package:get/get.dart';
import 'package:pundi_apps/ui/profile/profile_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.profile;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
