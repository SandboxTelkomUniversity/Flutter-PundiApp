import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pundi_apps/shared/theme.dart';

class InProcessWidget extends StatelessWidget {
  const InProcessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/json/send.json'),
          Text(
            'Semua transaksimu telah diproses!',
            style: AppText.textNormal.copyWith(
              color: AppColor.gray,
            ),
          ),
          Text(
            'Lihat Transaksi',
            style: AppText.textNormal.copyWith(
                color: AppColor.halloweenOrange, fontWeight: AppText.medium),
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
