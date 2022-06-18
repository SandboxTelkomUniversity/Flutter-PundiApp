import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pundi_apps/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 242,
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
                      height: 124,
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
                        child: Column(
                          children: [
                            Row(
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
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 40,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColor.cyan),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/bitmap/gopay_icon.png',
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                'Rp130.000',
                                                style: AppText.textNormal
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            AppText.semiBold,
                                                        color: AppColor.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColor.purple),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/bitmap/ovo_icon.png',
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                'Rp20.000',
                                                style: AppText.textNormal
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            AppText.semiBold,
                                                        color: AppColor.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColor.blue),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 8, bottom: 8),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/bitmap/dana_icon.png',
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                'Rp1.780.000',
                                                style: AppText.textNormal
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            AppText.semiBold,
                                                        color: AppColor.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColor.red),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/bitmap/spay_icon.png',
                                                height: 24,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                'Rp934.000',
                                                style: AppText.textNormal
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            AppText.semiBold,
                                                        color: AppColor.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
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
        margin: EdgeInsets.only(top: 28, left: 20, right: 20),
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

    Widget layananPundi() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Layanan ',
                    style: AppText.textNormal.copyWith(
                        color: AppColor.black,
                        fontWeight: AppText.semiBold,
                        fontSize: 16),
                  ),
                  TextSpan(
                    text: 'Pundi',
                    style: AppText.textNormal.copyWith(
                        color: AppColor.halloweenOrange,
                        fontWeight: AppText.semiBold,
                        fontSize: 16),
                  ),
                ])),
                Text(
                  'Lainnya',
                  style: AppText.textNormal.copyWith(
                      color: AppColor.orange,
                      fontWeight: AppText.semiBold,
                      fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/vector/ic_pulsa_data.svg',
                      height: 36,
                      width: 28,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beli Pulsa & Data',
                          style: AppText.textNormal.copyWith(
                              color: AppColor.black,
                              fontWeight: AppText.medium,
                              fontSize: 14),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'Hemat ',
                            style: AppText.textNormal.copyWith(
                                color: AppColor.black,
                                fontWeight: AppText.regular,
                                fontSize: 10),
                          ),
                          TextSpan(
                            text: '#pakepundi',
                            style: AppText.textNormal.copyWith(
                                color: AppColor.halloweenOrange,
                                fontWeight: AppText.regular,
                                fontSize: 10),
                          ),
                        ])),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 58,
                  height: 22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: AppColor.halloweenOrange),
                  child: Center(
                    child: Text(
                      'Beli',
                      style: AppText.textNormal.copyWith(
                          color: AppColor.white,
                          fontWeight: AppText.semiBold,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/vector/ic_listrik.svg',
                      height: 36,
                      width: 28,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bayar Listrik',
                          style: AppText.textNormal.copyWith(
                              color: AppColor.black,
                              fontWeight: AppText.medium,
                              fontSize: 14),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '#pakepundi ',
                            style: AppText.textNormal.copyWith(
                                color: AppColor.halloweenOrange,
                                fontWeight: AppText.regular,
                                fontSize: 10),
                          ),
                          TextSpan(
                            text: 'tinggal sat-set',
                            style: AppText.textNormal.copyWith(
                                color: AppColor.black,
                                fontWeight: AppText.regular,
                                fontSize: 10),
                          ),
                        ])),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: SvgPicture.asset(
                    'assets/vector/ic_next.svg',
                    height: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget transaksiTerakhir() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaksi Terakhir',
                      style: AppText.textNormal.copyWith(
                          color: AppColor.black,
                          fontWeight: AppText.semiBold,
                          fontSize: 16),
                    ),
                    Text(
                      'Selengkapnya',
                      style: AppText.textNormal.copyWith(
                          color: AppColor.orange,
                          fontWeight: AppText.semiBold,
                          fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                    height: 75,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SvgPicture.asset(
                                  'assets/vector/ic_transaction.svg',
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
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
                                    'OVO ke GOPAY',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black.withOpacity(0.5),
                                        fontWeight: AppText.regular,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '16 Juni 2022',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black.withOpacity(0.5),
                                        fontWeight: AppText.medium,
                                        fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rp15.000',
                                style: AppText.textNormal.copyWith(
                                    color: AppColor.black,
                                    fontWeight: AppText.semiBold,
                                    fontSize: 12),
                              ),
                              Text(
                                'Berhasil',
                                style: AppText.textNormal.copyWith(
                                    color: AppColor.green,
                                    fontWeight: AppText.semiBold,
                                    fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
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
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SvgPicture.asset(
                                  'assets/vector/ic_transaction.svg',
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Satrio Rahman Wicak...',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black,
                                        fontWeight: AppText.medium,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    'DANA ke OVO',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black.withOpacity(0.5),
                                        fontWeight: AppText.regular,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '14 Juni 2022',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black.withOpacity(0.5),
                                        fontWeight: AppText.medium,
                                        fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rp25.000',
                                style: AppText.textNormal.copyWith(
                                    color: AppColor.black,
                                    fontWeight: AppText.semiBold,
                                    fontSize: 12),
                              ),
                              Text(
                                'Refund',
                                style: AppText.textNormal.copyWith(
                                    color: AppColor.vividGamboge,
                                    fontWeight: AppText.semiBold,
                                    fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
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
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SvgPicture.asset(
                                  'assets/vector/ic_transaction.svg',
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
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
                                    'LINKAJA ke GOPAY',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black.withOpacity(0.5),
                                        fontWeight: AppText.regular,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '14 Juni 2022',
                                    style: AppText.textNormal.copyWith(
                                        color: AppColor.black.withOpacity(0.5),
                                        fontWeight: AppText.medium,
                                        fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rp70.000',
                                style: AppText.textNormal.copyWith(
                                    color: AppColor.black,
                                    fontWeight: AppText.semiBold,
                                    fontSize: 12),
                              ),
                              Text(
                                'Batal',
                                style: AppText.textNormal.copyWith(
                                    color: AppColor.red,
                                    fontWeight: AppText.semiBold,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                SizedBox(height: 224)
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              header(),
              limitTransaksi(),
              layananPundi(),
              transaksiTerakhir()
            ],
          ),
        ),
      ),
    );
  }
}
