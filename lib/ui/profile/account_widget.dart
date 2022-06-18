import 'package:flutter/material.dart';
import 'package:pundi_apps/ui/profile/item_container_widget.dart';

import '../../shared/theme.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const ItemContainerWidget(
              keyForm: 'Email', value: '***rio@****l.com'),
          const ItemContainerWidget(keyForm: 'No Hp', value: '+62822161******'),
          const ItemContainerWidget(
              keyForm: 'Pertanyaan Keamanan', value: 'Belum Diatur'),
          const ItemContainerWidget(keyForm: 'Pengaturan PIN', value: ''),
          const ItemContainerWidget(keyForm: 'Bahasa', value: 'Indonesia'),
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

}
