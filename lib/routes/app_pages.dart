import 'package:get/get.dart';
<<<<<<< Updated upstream
=======
import 'package:pundi_apps/ui/wallet/dana_page.dart';
import 'package:pundi_apps/ui/wallet/wallet_page.dart';
>>>>>>> Stashed changes

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
<<<<<<< Updated upstream
  static const initial = Routes.main;
=======
  static const initial = Routes.dana;
>>>>>>> Stashed changes

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
<<<<<<< Updated upstream
=======
    GetPage(
      name: Routes.wallet,
      page: () => const WalletPage(),
    ),
    GetPage(
      name: Routes.dana,
      page: () => const DanaPage(),
    ),
>>>>>>> Stashed changes
  ];
}
