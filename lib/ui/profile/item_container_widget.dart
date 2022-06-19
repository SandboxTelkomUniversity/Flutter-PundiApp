import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme.dart';

class ItemContainerWidget extends StatelessWidget {
  const ItemContainerWidget(
      {Key? key, required this.keyForm, required this.value})
      : super(key: key);

  final String keyForm;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 55,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                keyForm,
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
