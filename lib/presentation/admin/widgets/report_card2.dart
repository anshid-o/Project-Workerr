import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/admin/screens/report/admin_reply.dart';

class ReportCard2 extends StatelessWidget {
  const ReportCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: kc602,
          // gradient: kmygd,
          borderRadius: BorderRadius.circular(15),
        ),
        // color: Colors.white,
        child: ExpansionTile(
          title: const Text(
            'Mishal Jaleel',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kc30,
                letterSpacing: 0),
          ),
          subtitle: const Text(
            '10/05/2021',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kc302,
            ),
          ),
          leading: const CircleAvatar(
            radius: 30,
            backgroundColor: kblue2,
            child: Icon(
              Icons.person,
              shadows: kshadow,
              color: Color.fromARGB(255, 1, 51, 8),
              size: 45,
            ),
          ),
          trailing: const CircleAvatar(
            radius: 17,
            backgroundColor: kc10,
            child: Text(
              'AU',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kc60,
              ),
            ),
          ),
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'I am a plumber , yesterday i got a request from a user named althaf and i goto work in that place by contacting him. but those detals are wrong. Please take actions to those kind users.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kc30),
                      // elevation: MaterialStateProperty.all(4.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminReply(),
                          ));
                    },
                    child: const Text(
                      'Give Reply',
                      style: TextStyle(
                          color: kc10,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kc30),
                      // elevation: MaterialStateProperty.all(4.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Take Action',
                      style: TextStyle(
                          color: kc10,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            kheight
          ],
        ),
      ),
    );
  }
}
