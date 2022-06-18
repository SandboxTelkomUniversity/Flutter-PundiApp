import 'package:flutter/material.dart';
import 'package:pundi_apps/shared/theme.dart';
import 'package:pundi_apps/ui/activity/done_widget.dart';
import 'package:pundi_apps/ui/activity/in_process_widget.dart';

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
            indicatorColor: Colors.white,
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
              child: InProcessWidget(),
            ),
            Center(
              child: DoneWidget(),
            )
          ],
        ),
      ),
    );
  }
}
