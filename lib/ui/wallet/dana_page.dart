import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/shared/theme.dart';

import '../../routes/app_pages.dart';

class DanaPage extends StatelessWidget {
  const DanaPage({Key? key}) : super(key: key);

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

    Widget dana() {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          children: <Widget>[
            // The containers in the background
            Column(
              children: <Widget>[
                Stack(children: [
                  Container(
                    height: 137,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 134, right: 134, top: 28),
                    child: Image.asset(
                      'assets/bitmap/dana_logo.png',
                      scale: 4,
                    ),
                  )
                ]),
                Container(
                  height: 60,
                  color: Colors.white,
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 85, right: 20.0, left: 20.0),
              child: Container(
                height: 99,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Masukkan nomor HP sebagai ID DANA',
                            style: AppText.textMedium.copyWith(
                                color: AppColor.black.withOpacity(0.5),
                                fontWeight: AppText.regular,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 37,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                    color: AppColor.black.withOpacity(0.2),
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/bitmap/flag_icon.png',
                                        width: 17,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '+62',
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Image.asset(
                                        'assets/bitmap/down_icon.png',
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 1,
                                        color: AppColor.black.withOpacity(0.2),
                                      ),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          style: AppText.textNormal,
                                          decoration: InputDecoration.collapsed(
                                            hintText: 'Masukkan nomor hp',
                                            hintStyle: AppText.textNormal,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      );
    }

    Widget footer() {
      return BottomAppBar(
          child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 28),
        height: 140,
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/vector/ic_privacy_policy.svg',
                  height: 28,
                ),
                SizedBox(
                  width: 16,
                ),
                RichText(
                    text: TextSpan(
                  text: 'Dengan menghubungkan akun DANA, kamu\nsetuju dengan ',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.black.withOpacity(0.5),
                      fontWeight: AppText.regular,
                      fontSize: 12),
                  children: [
                    TextSpan(
                      text: 'syarat ',
                      style: AppText.textMedium.copyWith(
                          color: AppColor.blue,
                          fontWeight: AppText.regular,
                          fontSize: 12),
                    ),
                    TextSpan(
                      text: 'dan ',
                      style: AppText.textMedium.copyWith(
                          color: AppColor.black.withOpacity(0.5),
                          fontWeight: AppText.regular,
                          fontSize: 12),
                    ),
                    TextSpan(
                      text: 'ketentuan ',
                      style: AppText.textMedium.copyWith(
                          color: AppColor.blue,
                          fontWeight: AppText.regular,
                          fontSize: 12),
                    ),
                    TextSpan(
                      text: 'DANA',
                      style: AppText.textMedium.copyWith(
                          color: AppColor.black.withOpacity(0.5),
                          fontWeight: AppText.regular,
                          fontSize: 12),
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.danaPin);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Lanjutkan',
                    style: AppText.textMedium.copyWith(
                        color: AppColor.white,
                        fontWeight: AppText.semiBold,
                        fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
        color: AppColor.white,
      ));
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.white,
        bottomNavigationBar: footer(),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                header(),
                dana(),
              ],
            ),
          ),
        ));
  }
}
