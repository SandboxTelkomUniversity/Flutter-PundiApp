import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pundi_apps/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 186,
        decoration: BoxDecoration(
          color: AppColor.orange,
          borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 100.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 72),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Halo, Gia!',
                        style: AppText.textCustom.copyWith(
                            color: AppColor.white,
                            fontWeight: AppText.bold,
                            fontSize: 20),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/bitmap/help_icon.png',
                            width: 14,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Bantuan',
                            style: AppText.textCustom.copyWith(
                                color: AppColor.white,
                                fontWeight: AppText.medium,
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.black.withOpacity(0.3),
                              offset: Offset(0, 01),
                              blurRadius: 2,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saldo Pundi',
                                  style: AppText.textNormal.copyWith(
                                    fontSize: 10,
                                    fontWeight: AppText.regular,
                                    color: AppColor.quickSilver,
                                  ),
                                ),
                                Text(
                                  'Rp 500.000',
                                  style: AppText.textMedium.copyWith(
                                      fontWeight: AppText.semiBold,
                                      color: AppColor.black,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 1,
                                  color: AppColor.americanSilver,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/vector/ic_topup.svg',
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Top Up',
                                      style: AppText.textNormal.copyWith(
                                        fontSize: 10,
                                        fontWeight: AppText.semiBold,
                                        color: AppColor.orange,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget limitTransaksi() {
      return Container(
        height: 83,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 12, left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColor.halloweenOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Limit Saat Ini : ',
                  style: AppText.textSmall.copyWith(
                      color: AppColor.black,
                      fontWeight: AppText.medium,
                      fontSize: 10),
                ),
                TextSpan(
                  text: '3 Transaksi',
                  style: AppText.textSmall.copyWith(
                      color: AppColor.black,
                      fontWeight: AppText.semiBold,
                      fontSize: 10),
                ),
              ])),
              SizedBox(height: 10),
              Container(
                  child: LinearProgressIndicator(
                value: 0.7,
                valueColor: AlwaysStoppedAnimation<Color>(AppColor.orange),
                backgroundColor: AppColor.americanSilver,
              )),
              SizedBox(height: 8),
              Text(
                'Pakai saldo Pundi agar bebas limit',
                style: AppText.textSmall.copyWith(
                    color: AppColor.halloweenOrange,
                    fontWeight: AppText.medium,
                    fontSize: 10),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Column(
          children: [header(), limitTransaksi()],
        ),
      ),
    );
  }
}
