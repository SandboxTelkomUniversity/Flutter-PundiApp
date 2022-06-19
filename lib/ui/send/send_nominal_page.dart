import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../shared/theme.dart';

class SendNominalPage extends StatefulWidget {
  const SendNominalPage({Key? key}) : super(key: key);

  @override
  State<SendNominalPage> createState() => _SendNominalPageState();
}

class _SendNominalPageState extends State<SendNominalPage> {
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              "Masukkan nominal",
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
                Container(
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.white),
                          child: Container(
                            margin: const EdgeInsets.only(top: 12),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  height: 2,
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nominal Kirim',
                                        style: AppText.textNormal.copyWith(
                                            color: AppColor.black,
                                            fontWeight: AppText.medium,
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '',
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  margin: EdgeInsets.only(top: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rp',
                                        style: AppText.textMedium.copyWith(
                                            color: AppColor.black,
                                            fontWeight: AppText.medium,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        '0',
                                        style: AppText.textMedium.copyWith(
                                            color: AppColor.gray,
                                            fontWeight: AppText.medium,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Catatan',
                  style:
                      AppText.textNormal.copyWith(fontWeight: AppText.regular),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.only(top: 8),
                  child: TextField(
                    controller: noteController,
                    decoration: InputDecoration(
                      hintText: "Buat makan siang",
                      contentPadding: EdgeInsets.only(top: 8, left: 12),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.halloweenOrange, width: 1),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.halloweenOrange, width: 1),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  ),
                ),
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
                  Get.toNamed(Routes.method);
                },
                child: const Text(
                  "Lanjutankan",
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
