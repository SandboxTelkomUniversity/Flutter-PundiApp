import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/shared/theme.dart';

import '../../routes/app_pages.dart';

class DanaOTPPAge extends StatefulWidget {
  const DanaOTPPAge({Key? key}) : super(key: key);

  @override
  State<DanaOTPPAge> createState() => _DanaOTPPAgeState();
}

class _DanaOTPPAgeState extends State<DanaOTPPAge> {
  void initState() {
    AwaitingScreen();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        height: 24,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset('assets/vector/ic_cross.svg'),
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              width: 1,
              height: 20,
              color: AppColor.black.withOpacity(0.5),
            ),
            SizedBox(
              width: 16,
            ),
            Image.asset(
              'assets/bitmap/dana_icon.png',
              width: 20,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Connect Dana',
              style: AppText.textMedium.copyWith(
                  color: AppColor.black,
                  fontWeight: AppText.semiBold,
                  fontSize: 16),
            )
          ],
        ),
      );
    }

    Widget otp() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/vector/ic_phone.svg',
                  height: 44,
                  width: 28,
                ),
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Masukkan kode yang Dikirim via SMS\nke +62822****6945',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.black.withOpacity(0.5),
                      fontWeight: AppText.regular,
                      fontSize: 12),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 69,
                right: 69,
              ),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 1,
                    color: AppColor.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    width: 32,
                    height: 1,
                    color: AppColor.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    width: 32,
                    height: 1,
                    color: AppColor.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    width: 32,
                    height: 1,
                    color: AppColor.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Text(
                'KIRIM ULANG',
                style: AppText.textMedium.copyWith(
                    color: AppColor.blue,
                    fontWeight: AppText.medium,
                    fontSize: 12),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: AppColor.white,
        body: SafeArea(
            child: Column(
          children: [header(), otp()],
        )));
  }

  AwaitingScreen() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Get.offNamed(Routes.main);
    });
  }
}
