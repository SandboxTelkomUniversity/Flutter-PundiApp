import 'package:flutter/material.dart';
import 'package:pundi_apps/shared/theme.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.orange,
          title: Text(
            'Aktivitas Transaksi',
            style: AppText.textMedium.copyWith(fontWeight: AppText.bold),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Dalam Proses',
              ),
              Tab(
                text: 'Selesai',
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Screen 1"),
            ),
            Center(
              child: Text("Screen 2"),
            )
          ],
        ),
      ),
    );
  }
}
