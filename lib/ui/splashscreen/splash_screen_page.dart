import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Flexible(
            flex: 8,
            child: Center(
              child: Image.asset(
                'assets/bitmap/logo.png',
                width: 100,
              ),
            ),
          ),
          SizedBox(),
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 28, right: 28),
              child: Row(
                children: [
                  Image.asset(
                    'assets/bitmap/bi.png',
                    width: 28,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: const Text(
                        'Pundi merupakan perusahaan transfer dana yang telah terlisensi oleh Bank Indonesia',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Get.offNamed(Routes.onboarding);
    });
  }
}
