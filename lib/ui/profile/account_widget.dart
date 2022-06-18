import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          itemContainer('Email', '***rio@****l.com'),
          itemContainer('No Hp', '+62822161******'),
          itemContainer('Pertanyaan Keamanan', 'Belum Diatur'),
          itemContainer('Pengaturan PIN', ''),
          itemContainer('Bahasa', 'Indonesia'),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(vertical: 11),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Keluar',
                style: AppText.textNormal.copyWith(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Pundi v1.0',
              style: AppText.textNormal.copyWith(color: AppColor.gray),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Container itemContainer(String key, String value) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 50,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                key,
                style: AppText.textNormal.copyWith(fontWeight: AppText.medium),
              ),
              Row(
                children: [
                  Text(
                    value,
                    style: AppText.textNormal.copyWith(
                        fontWeight: AppText.regular, color: AppColor.gray),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset('assets/vector/ic_arrow.svg'),
                ],
              ),
            ],
          ),
          Container(
            height: 1,
            color: AppColor.americanSilver,
            margin: const EdgeInsets.only(top: 12),
          )
        ],
      ),
    );
  }
}
