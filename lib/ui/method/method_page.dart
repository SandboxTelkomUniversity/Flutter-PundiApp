import 'package:flutter/material.dart';
import 'package:pundi_apps/shared/theme.dart';

class MethodPage extends StatefulWidget {
  const MethodPage({Key? key}) : super(key: key);

  @override
  State<MethodPage> createState() => _MethodPageState();
}

class _MethodPageState extends State<MethodPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        titleSpacing: 0.0,
        backgroundColor: AppColor.orange,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {},
              iconSize: 30,
            ),
            Text(
              'Pilih Metode',
              style: AppText.textMedium
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      );
    }

    Widget nominalKirim() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Stack(
          children: [
            Column(
              children: [
                Stack(children: [
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(0.1),
                            offset: const Offset(0, 0),
                            spreadRadius: 1,
                            blurRadius: 4,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gia Anisa',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 12,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black),
                              ),
                              Text(
                                'GoPay',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 12,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black.withOpacity(0.5)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/bitmap/icon_gopay.png',
                                  height: 24),
                              Text(
                                '+6282216136945',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 14,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                Container(
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(0.1),
                            offset: const Offset(0, 0),
                            blurRadius: 4,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nominal Kirim',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 12,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black),
                              ),
                              Text(
                                'Rp13.646',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 12,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Biaya Admin',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 12,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black),
                              ),
                              Text(
                                'Rp.0',
                                style: AppText.textMedium.copyWith(
                                    fontSize: 12,
                                    fontWeight: AppText.medium,
                                    color: AppColor.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      );
    }

    Widget metodeKirim() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 28),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Metode Kirim',
                  style: AppText.textMedium.copyWith(
                      fontSize: 14,
                      fontWeight: AppText.semiBold,
                      color: AppColor.black),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return Container(
                            height: 400,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
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
                                  const SizedBox(height: 28),
                                  Text(
                                    'Tambah Dompet Digital',
                                    style: AppText.textMedium.copyWith(
                                      fontWeight: AppText.semiBold,
                                      fontSize: 14,
                                      color: AppColor.black,
                                    ),
                                  ),
                                  const SizedBox(height: 28),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/bitmap/gopay_icon.png',
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            'GoPay',
                                            style: AppText.textMedium.copyWith(
                                              fontWeight: AppText.semiBold,
                                              fontSize: 14,
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: AppColor.orange,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/bitmap/ovo_icon.png',
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            'OVO',
                                            style: AppText.textMedium.copyWith(
                                              fontWeight: AppText.semiBold,
                                              fontSize: 14,
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: AppColor.orange,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/bitmap/dana_icon.png',
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            'Dana',
                                            style: AppText.textMedium.copyWith(
                                              fontWeight: AppText.semiBold,
                                              fontSize: 14,
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: AppColor.orange,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/bitmap/spay_icon.png',
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            'Shoope Pay',
                                            style: AppText.textMedium.copyWith(
                                              fontWeight: AppText.semiBold,
                                              fontSize: 14,
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: AppColor.orange,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Dompet Lainnya',
                    style: AppText.textMedium.copyWith(
                        fontSize: 10,
                        fontWeight: AppText.semiBold,
                        color: AppColor.orange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SaldoPundi(),
            const SizedBox(
              height: 12,
            ),
            const SaldoDana(),
          ],
        ),
      );
    }

    Widget footer() {
      return BottomAppBar(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 28),
          height: 80,
          color: AppColor.white,
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.halloweenOrange,
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
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: AppColor.white,
        bottomNavigationBar: footer(),
        body: SafeArea(
            top: false,
            child: Column(
              children: [header(), nominalKirim(), metodeKirim()],
            )));
  }
}

class SaldoDana extends StatelessWidget {
  const SaldoDana({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.1),
              offset: const Offset(0, 0),
              spreadRadius: 1,
              blurRadius: 4,
            ),
          ]),
      child: Stack(children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 99,
            height: 14,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: AppColor.orange),
            child: Center(
              child: Text(
                'Biaya +Rp1.500',
                style: AppText.textMedium.copyWith(
                    fontSize: 10,
                    fontWeight: AppText.regular,
                    color: AppColor.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DANA | Gia Anisa',
                    style: AppText.textMedium.copyWith(
                        fontSize: 12,
                        fontWeight: AppText.medium,
                        color: AppColor.black),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/bitmap/dana_icon.png',
                        height: 24,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Rp1.780.000',
                        style: AppText.textMedium.copyWith(
                            fontSize: 12,
                            fontWeight: AppText.medium,
                            color: AppColor.black),
                      ),
                    ],
                  )
                ],
              ),
              Icon(
                Icons.radio_button_off,
                color: AppColor.orange.withOpacity(0.5),
                size: 24,
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class SaldoPundi extends StatelessWidget {
  const SaldoPundi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.1),
              offset: const Offset(0, 0),
              spreadRadius: 1,
              blurRadius: 4,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saldo Pundi',
                  style: AppText.textMedium.copyWith(
                      fontSize: 12,
                      fontWeight: AppText.regular,
                      color: AppColor.orange),
                ),
                Text(
                  'Rp 500.000',
                  style: AppText.textMedium.copyWith(
                      fontSize: 16,
                      fontWeight: AppText.semiBold,
                      color: AppColor.black),
                )
              ],
            ),
            const Icon(
              Icons.radio_button_checked,
              color: AppColor.orange,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
