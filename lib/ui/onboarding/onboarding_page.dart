import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/shared/theme.dart';

import '../../routes/app_pages.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 570,
              decoration: BoxDecoration(
                color: AppColor.orange,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 110.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Stack(
                  children: [
                    Image.asset('assets/bitmap/onboarding.png'),
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Column(
                          children: [
                            Text(
                              'Transfer antar dompet digital\nGratis pakai Pundi.',
                              style: AppText.textSemiMedium.copyWith(
                                color: Colors.white,
                                fontWeight: AppText.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Sekarang ga perlu ribet transfer antar e-wallet \ncukup #pakepundi',
                                style: AppText.textNormal.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 84,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(330, 50),
                primary: AppColor.halloweenOrange,
                shadowColor: AppColor.gray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                textStyle: AppText.textMedium.copyWith(
                  fontSize: 14.0,
                  color: AppColor.white,
                  fontWeight: AppText.semiBold,
                ),
              ),
              onPressed: () {
                Get.offNamed(Routes.register);
              },
              child: const Text(
                "Daftar Sekarang",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.offNamed(Routes.login);
              },
              child: Text(
                "Masuk",
                style: AppText.textNormal.copyWith(
                    fontWeight: AppText.bold, color: AppColor.halloweenOrange),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
