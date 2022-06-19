import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../controllers/main_controller.dart';
import '../../routes/app_pages.dart';
import '../../shared/theme.dart';

class WaitPage extends StatefulWidget {
  const WaitPage({Key? key}) : super(key: key);

  @override
  State<WaitPage> createState() => _WaitPageState();
}

class _WaitPageState extends State<WaitPage> {
  final MainController mainController = Get.find();

  void initState() {
    AwaitingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/json/flmpdjpa.json'),
            Text(
              'Tunggu sebentar,\ntransaksimu sedang diproses',
              style: AppText.textNormal.copyWith(
                color: AppColor.gray,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }

  AwaitingScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      mainController.changeIndex(1);
      Get.offNamed(Routes.main);
    });
  }
}
