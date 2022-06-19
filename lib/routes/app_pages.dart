import 'package:get/get.dart';
import 'package:pundi_apps/ui/send/send_nominal_page.dart';
import 'package:pundi_apps/ui/send/send_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.nominal;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.send,
      page: () => const SendPage(),
    ),
    GetPage(
      name: Routes.nominal,
      page: () => const SendNominalPage(),
    ),
  ];
}
