import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/controllers/main_controller.dart';
import 'package:pundi_apps/shared/theme.dart';
import 'package:pundi_apps/ui/home/home_page.dart';
import 'package:pundi_apps/ui/profile/profile_page.dart';

import '../activity/activity_page.dart';
import 'navigation_item.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final PageStorageBucket bucket = PageStorageBucket();
  final MainController mainController = Get.put(MainController());

  final List<Widget> currentScreenList = [
    const HomePage(),
    const ActivityPage(),
    Container(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => PageStorage(
          bucket: bucket,
          child: currentScreenList[mainController.currentIndex.value],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(
        () => FloatingActionButton(
          backgroundColor:
              mainController.dontChange.value ? null : AppColor.halloweenOrange,
          onPressed: () {},
          tooltip: "Transfer",
          elevation: 4.0,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              'assets/vector/ic_send.svg',
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Obx(
                () => NavigationItem(
                  callback: () => mainController.changeIndex(0),
                  svgSource: 'assets/vector/ic_home.svg',
                  active: mainController.currentIndex.value == 0,
                  label: "Beranda",
                ),
              ),
              Obx(
                () => NavigationItem(
                  callback: () => mainController.changeIndex(1),
                  svgSource: 'assets/vector/ic_activity.svg',
                  active: mainController.currentIndex.value == 1,
                  label: "Aktivitas",
                ),
              ),
              const SizedBox(width: 50.0),
              Obx(
                () => NavigationItem(
                  callback: () => mainController.changeIndex(2),
                  svgSource: 'assets/vector/ic_wallet.svg',
                  active: mainController.currentIndex.value == 2,
                  label: "Dompet",
                ),
              ),
              Obx(
                () => NavigationItem(
                  callback: () => mainController.changeIndex(3),
                  svgSource: 'assets/vector/ic_profile.svg',
                  active: mainController.currentIndex.value == 3,
                  label: "Akun",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
