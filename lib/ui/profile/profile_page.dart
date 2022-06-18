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
          backgroundColor: AppColor.orange,
          title: Text(
            'Profile',
            style: AppText.textMedium.copyWith(fontWeight: AppText.bold),
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
