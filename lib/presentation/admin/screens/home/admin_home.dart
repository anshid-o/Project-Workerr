import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/admin/widgets/waiting_card.dart';
import 'package:workerr_app/presentation/admin/widgets/waiting_card2.dart';
import 'package:workerr_app/presentation/user/widgets/my_app_bar.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

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
              'Requests',
              style: TextStyle(
                  color: kc60, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) => WaitingCard2()),
          itemCount: 10,
        ),
      ),
    );
  }
}
