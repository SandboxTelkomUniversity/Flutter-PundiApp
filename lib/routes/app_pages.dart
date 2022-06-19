import 'package:get/get.dart';
import 'package:pundi_apps/ui/wait/wait_page.dart';
import 'package:pundi_apps/ui/activity/activity_page.dart';
import 'package:pundi_apps/ui/home/home_page.dart';
import 'package:pundi_apps/ui/login/login_page.dart';
import 'package:pundi_apps/ui/method/method_page.dart';
import 'package:pundi_apps/ui/onboarding/onboarding_page.dart';
import 'package:pundi_apps/ui/profile/profile_page.dart';
import 'package:pundi_apps/ui/register/register_page.dart';
import 'package:pundi_apps/ui/send/send_nominal_page.dart';
import 'package:pundi_apps/ui/send/send_page.dart';
import 'package:pundi_apps/ui/splashscreen/splash_screen_page.dart';
import 'package:pundi_apps/ui/wallet/dana_page.dart';
import 'package:pundi_apps/ui/wallet/wallet_page.dart';

import '../ui/main/main_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.register;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreenPage(),
    ),
    GetPage(
      name: Routes.main,
      page: () => MainPage(),
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.activity,
      page: () => const ActivityPage(),
    ),
    GetPage(
      name: Routes.wallet,
      page: () => const WalletPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: Routes.wallet,
      page: () => const WalletPage(),
    ),
    GetPage(
      name: Routes.dana,
      page: () => const DanaPage(),
    ),
    GetPage(
      name: Routes.send,
      page: () => const SendPage(),
    ),
    GetPage(
      name: Routes.nominal,
      page: () => const SendNominalPage(),
    ),
    GetPage(
      name: Routes.method,
      page: () => const MethodPage(),
    ),
    GetPage(
      name: Routes.wait,
      page: () => const WaitPage(),
    ),
  ];
}
