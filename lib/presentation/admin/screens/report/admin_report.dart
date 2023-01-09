import 'package:flutter/material.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/presentation/admin/widgets/report_card.dart';
import 'package:workerr_app/presentation/admin/widgets/report_card2.dart';
import 'package:workerr_app/presentation/user/widgets/my_app_bar.dart';

class AdminReportScreen extends StatelessWidget {
  const AdminReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kc30,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBar(
            backgroundColor: kc30.withGreen(18),
            automaticallyImplyLeading: false,
            title: const Text(
              'Reports',
              style: TextStyle(
                  color: kc60, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) => const ReportCard2()),
          itemCount: 10,
        ),
      ),
    );
  }
}
