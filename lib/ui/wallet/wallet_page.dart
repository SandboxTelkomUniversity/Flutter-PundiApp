import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pundi_apps/shared/theme.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {},
                  iconSize: 30,
                ),
                Text(
                  'Dompet Digital',
                  style: AppText.textMedium
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
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
                              SizedBox(height: 28),
                              Text(
                                'Tambah Dompet Digital',
                                style: AppText.textMedium.copyWith(
                                  fontWeight: AppText.semiBold,
                                  fontSize: 14,
                                  color: AppColor.black,
                                ),
                              ),
                              SizedBox(height: 28),
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
                                      SizedBox(
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
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: AppColor.orange,
                                    size: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
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
                                      SizedBox(
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
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: AppColor.orange,
                                    size: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
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
                                      SizedBox(
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
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: AppColor.orange,
                                    size: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
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
                                      SizedBox(
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
                                  Icon(
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
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  'assets/vector/ic_plus.svg',
                  height: 27,
                ),
              ),
            )
          ],
        ),
        backgroundColor: AppColor.orange,
      );
    }

    Widget gopay() {
      return Container(
        height: 213,
        color: AppColor.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GoPay',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.semiBold,
                          fontSize: 16,
                          color: AppColor.black,
                        ),
                      ),
                      Text(
                        'Aktif',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.regular,
                          fontSize: 12,
                          color: AppColor.green,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp130.000',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.medium,
                          fontSize: 14,
                          color: AppColor.black.withOpacity(0.7),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20)),
                                      color: AppColor.white),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Container(
                                            width: 55,
                                            height: 6,
                                            decoration: BoxDecoration(
                                              color: AppColor.orange,
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 28),
                                        Text(
                                          'Pengaturan',
                                          style: AppText.textMedium.copyWith(
                                            fontWeight: AppText.semiBold,
                                            fontSize: 14,
                                            color: AppColor.black,
                                          ),
                                        ),
                                        SizedBox(height: 28),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/bitmap/open_icon.png',
                                                  height: 24,
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  'Buka GoPay',
                                                  style: AppText.textMedium
                                                      .copyWith(
                                                    fontWeight:
                                                        AppText.semiBold,
                                                    fontSize: 14,
                                                    color: AppColor.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color: AppColor.orange,
                                              size: 40,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/bitmap/delete_icon.png',
                                                  height: 24,
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  'Hapus Dompet Digital',
                                                  style: AppText.textMedium
                                                      .copyWith(
                                                    fontWeight:
                                                        AppText.semiBold,
                                                    fontSize: 14,
                                                    color: AppColor.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
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
                        child: Icon(
                          Icons.more_vert,
                          color: AppColor.black.withOpacity(0.5),
                          size: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Image.asset(
                'assets/bitmap/banner_gopay.png',
                height: 103,
                width: 350,
              )
            ],
          ),
        ),
      );
    }

    Widget ovo() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        height: 213,
        color: AppColor.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'OVO',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.semiBold,
                          fontSize: 16,
                          color: AppColor.black,
                        ),
                      ),
                      Text(
                        'Aktif',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.regular,
                          fontSize: 12,
                          color: AppColor.green,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp20.000',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.medium,
                          fontSize: 14,
                          color: AppColor.black.withOpacity(0.7),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: AppColor.black.withOpacity(0.5),
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Image.asset(
                'assets/bitmap/banner_ovo.png',
                height: 103,
                width: 350,
              )
            ],
          ),
        ),
      );
    }

    Widget dana() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        height: 213,
        color: AppColor.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dana',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.semiBold,
                          fontSize: 16,
                          color: AppColor.black,
                        ),
                      ),
                      Text(
                        'Aktif',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.regular,
                          fontSize: 12,
                          color: AppColor.green,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp1.780.000',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.medium,
                          fontSize: 14,
                          color: AppColor.black.withOpacity(0.7),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: AppColor.black.withOpacity(0.5),
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Image.asset(
                'assets/bitmap/banner_dana.png',
                height: 103,
                width: 350,
              )
            ],
          ),
        ),
      );
    }

    Widget shopeePay() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        height: 213,
        color: AppColor.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shopee Pay',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.semiBold,
                          fontSize: 16,
                          color: AppColor.black,
                        ),
                      ),
                      Text(
                        'Aktif',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.regular,
                          fontSize: 12,
                          color: AppColor.green,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp934.000',
                        style: AppText.textMedium.copyWith(
                          fontWeight: AppText.medium,
                          fontSize: 14,
                          color: AppColor.black.withOpacity(0.7),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: AppColor.black.withOpacity(0.5),
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Image.asset(
                'assets/bitmap/banner_spay.png',
                height: 103,
                width: 350,
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.brightGray,
        body: SingleChildScrollView(
          child: SafeArea(
            top: false,
            child: Column(
              children: [header(), gopay(), ovo(), dana(), shopeePay()],
            ),
          ),
        ));
  }
}
