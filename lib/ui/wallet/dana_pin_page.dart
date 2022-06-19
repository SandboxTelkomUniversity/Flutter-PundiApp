import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pundi_apps/shared/theme.dart';

class DanaPinPage extends StatelessWidget {
  const DanaPinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        height: 24,
        child: Row(
          children: [
            SvgPicture.asset('assets/vector/ic_cross.svg'),
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

    Widget dana() {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(children: [
          Container(
            height: 137,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 134, right: 134, top: 28),
            child: Column(
              children: [
                Image.asset(
                  'assets/bitmap/dana_logo.png',
                  scale: 4,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Masukkan PIN',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.white,
                      fontWeight: AppText.medium,
                      fontSize: 16),
                )
              ],
            ),
          )
        ]),
      );
    }

    Widget pin() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PIN',
              style: AppText.textMedium.copyWith(
                  color: AppColor.black,
                  fontWeight: AppText.medium,
                  fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.circle_rounded,
                      color: AppColor.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: AppColor.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: AppColor.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: AppColor.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: AppColor.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: AppColor.black,
                      size: 20,
                    ),
                  ],
                ),
                Text(
                  'TAMPILKAN',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.blue,
                      fontWeight: AppText.semiBold,
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: AppColor.black.withOpacity(0.3),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reset PIN',
                    style: AppText.textMedium.copyWith(
                        color: AppColor.blue,
                        fontWeight: AppText.regular,
                        fontSize: 12),
                  ),
                  Text(
                    'Kontak CS',
                    style: AppText.textMedium.copyWith(
                        color: AppColor.blue,
                        fontWeight: AppText.regular,
                        fontSize: 12),
                  ),
                ],
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
          children: [header(), dana(), pin()],
        ),
      ),
    );
  }
}
