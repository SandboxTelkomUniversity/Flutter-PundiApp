import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/controllers/main_controller.dart';
import 'package:pundi_apps/shared/theme.dart';
import 'package:pundi_apps/ui/home/home_page.dart';
import 'package:pundi_apps/ui/profile/profile_page.dart';

import '../../routes/app_pages.dart';
import '../activity/activity_page.dart';
import '../wallet/wallet_page.dart';
import 'navigation_item.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final PageStorageBucket bucket = PageStorageBucket();
  final MainController mainController = Get.put(MainController());

  final List<Widget> currentScreenList = [
    const HomePage(),
    const ActivityPage(),
    const WalletPage(),
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
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    height: 350,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: AppColor.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 55,
                              height: 6,
                              decoration: BoxDecoration(
                                color: AppColor.orange,
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                          ),
                          SizedBox(height: 28),
                          Text(
                            'Mau kirim kemana ?',
                            style: AppText.textMedium.copyWith(
                              fontWeight: AppText.semiBold,
                              fontSize: 14,
                              color: AppColor.black,
                            ),
                          ),
                          const SizedBox(height: 32),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.send);
                            },
                            child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.white),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24, bottom: 20, top: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SvgPicture.asset(
                                              'assets/vector/ic_transaction.svg',
                                              height: 32,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kirim antar E-Wallet',
                                                style: AppText.textNormal
                                                    .copyWith(
                                                        color: AppColor.black,
                                                        fontWeight:
                                                            AppText.medium,
                                                        fontSize: 12),
                                              ),
                                              Text(
                                                'Pindahkan saldo ke semua E-Wallet, gratis!',
                                                style: AppText.textNormal
                                                    .copyWith(
                                                        color: AppColor.black
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            AppText.regular,
                                                        fontSize: 10),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(height: 20),
                          Container(
                              height: 75,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.white),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, bottom: 20, top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SvgPicture.asset(
                                            'assets/vector/ic_bank.svg',
                                            height: 32,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Kirim E-Wallet ke Bank',
                                              style: AppText.textNormal
                                                  .copyWith(
                                                      color: AppColor.black,
                                                      fontWeight:
                                                          AppText.medium,
                                                      fontSize: 12),
                                            ),
                                            Text(
                                              'Transfer ke lebih dari 100 bank di Indonesia',
                                              style: AppText.textNormal
                                                  .copyWith(
                                                      color: AppColor.black
                                                          .withOpacity(0.5),
                                                      fontWeight:
                                                          AppText.regular,
                                                      fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  );
                });
          },
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
