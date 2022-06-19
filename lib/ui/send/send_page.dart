import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/shared/theme.dart';

import '../../routes/app_pages.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        backgroundColor: AppColor.orange,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
            Text(
              "Kirim antar E-wallet",
              style: AppText.textMedium
                  .copyWith(fontWeight: AppText.bold, fontSize: 20),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 28, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tujuan Tersimpan',
                  style:
                      AppText.textNormal.copyWith(fontWeight: AppText.semiBold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: Column(
                    children: [
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
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            margin: const EdgeInsets.only(top: 12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gia Anisa',
                                      style: AppText.textNormal.copyWith(
                                          color: AppColor.black,
                                          fontWeight: AppText.medium,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      'Gopay',
                                      style: AppText.textNormal.copyWith(
                                          color: AppColor.gray,
                                          fontWeight: AppText.medium,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/vector/gopay_icon.png',
                                      width: 24,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        '+6282216136945',
                                        style: AppText.textNormal.copyWith(
                                            color: AppColor.black,
                                            fontWeight: AppText.medium,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.white),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alvin Kusuma',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black,
                                        fontWeight: AppText.medium,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    'Gopay',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.gray,
                                        fontWeight: AppText.medium,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/vector/gopay_icon.png',
                                    width: 24,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      '+6285813457634',
                                      style: AppText.textNormal.copyWith(
                                          color: AppColor.black,
                                          fontWeight: AppText.medium,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 36),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(330, 50),
                  primary: AppColor.halloweenOrange,
                  shadowColor: AppColor.gray,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  textStyle: AppText.textMedium.copyWith(
                    fontSize: 14.0,
                    color: AppColor.white,
                    fontWeight: AppText.semiBold,
                  ),
                ),
                onPressed: () {
                  Get.toNamed(Routes.nominal);
                },
                child: const Text(
                  "Tujuan Baru",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
