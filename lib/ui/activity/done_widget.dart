import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme.dart';

class DoneWidget extends StatelessWidget {
  const DoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: transactionPart(),
      ),
    );
  }

  Widget transactionPart() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
      child: Column(
        children: [
          Column(
            children: [
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
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hanan',
                                  style: AppText.textNormal.copyWith(
                                      color: AppColor.black,
                                      fontWeight: AppText.medium,
                                      fontSize: 12),
                                ),
                                Text(
                                  'LINKAJA ke OVO',
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
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Syariif',
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
                                  '13 Juni 2022',
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
                              'Rp5.000',
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
                                  'Muhammad Rezki Ana...',
                                  style: AppText.textNormal.copyWith(
                                      color: AppColor.black,
                                      fontWeight: AppText.medium,
                                      fontSize: 12),
                                ),
                                Text(
                                  'GOPAY ke DANA',
                                  style: AppText.textNormal.copyWith(
                                      color: AppColor.black.withOpacity(0.5),
                                      fontWeight: AppText.regular,
                                      fontSize: 10),
                                ),
                                Text(
                                  '13 Juni 2022',
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
                              'Batal',
                              style: AppText.textNormal.copyWith(
                                  color: AppColor.red,
                                  fontWeight: AppText.semiBold,
                                  fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 36)
            ],
          )
        ],
      ),
    );
  }
}
