import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../shared/theme.dart';

class WaitPage extends StatefulWidget {
  const WaitPage({Key? key}) : super(key: key);

  @override
  State<WaitPage> createState() => _WaitPageState();
}

class _WaitPageState extends State<WaitPage> {
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
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      // Get.offNamed(Routes.main);
    });
  }
}
