import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import 'about_widget.dart';
import 'account_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7F7),
        appBar: AppBar(
          toolbarHeight: 100,
          titleSpacing: 25,
          centerTitle: true,
          backgroundColor: AppColor.orange,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset(
                'assets/bitmap/avatar.png',
                width: 60,
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gia Anisa",
                      style:
                          AppText.textNormal.copyWith(fontWeight: AppText.bold),
                    ),
                    Text(
                      "+62822161******",
                      style: AppText.textSmall
                          .copyWith(fontWeight: AppText.regular),
                    ),
                  ],
                ),
              )
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Akun',
              ),
              Tab(
                text: 'Tentang',
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [AccountWidget(), AboutWidget()],
        ),
      ),
    );
  }
}
