import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import 'item_container_widget.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const ItemContainerWidget(keyForm: 'Tentang Aplikasi', value: ''),
          const ItemContainerWidget(keyForm: 'Ketentuan Layanan', value: ''),
          const ItemContainerWidget(keyForm: 'Kebijakan Privasi', value: ''),
          const ItemContainerWidget(keyForm: 'Pusat Bantuan', value: ''),
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
