import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/widgets/my_tabbed_appbar.dart';

// import 'package:workerr_app/presentation/user/widgets/my_app_bar.dart';
// import 'package:workerr_app/presentation/user/widgets/work_card.dart';
import 'package:workerr_app/presentation/user/widgets/work_card2.dart';

class ScreenHome extends StatelessWidget {
  // final size = MediaQueryData.fromWindow(FlutterView window);
  ScreenHome({Key? key}) : super(key: key);
  final auth = FirebaseAuth.instance;

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
              'My Works',
              style: TextStyle(
                  color: kc60, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                tooltip: 'Top Workers',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyTabbedAppBar(),
                    ),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.person_3_fill,
                  color: kc10,
                  size: 30,
                  shadows: kshadow2,
                ),
              ),
              kwidth
            ],
          ),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) => WorkCard2(
                index: index,
              )),
          itemCount: 15,
        ),
      ),
    );
  }
}
