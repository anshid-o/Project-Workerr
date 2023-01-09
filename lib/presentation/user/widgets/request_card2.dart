import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/chat/chat_screen_child.dart';

class RequestCard2 extends StatelessWidget {
  const RequestCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: kc602,
            // gradient: kmygd,
            borderRadius: BorderRadius.circular(15),
          ),
          // color: Colors.white,
          child: ExpansionTile(
            trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 15),
              child: IconButton(
                tooltip: 'Send Message to Anshid O',
                // alignment: Alignment.topRight,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => ChatScreenChild(
                        name: 'Anshid O',
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                  size: 45,
                  color: kc10,
                  shadows: kshadow,
                ),
              ),
            ),
            title: const Text(
              'Painting',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: kc30,
                  letterSpacing: 1),
            ),
            subtitle: const Text(
              '10/05/2021',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: kc302,
              ),
            ),
            children: const [
              kheight,
              Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'I have a painting job to be done in my new shop, it has almost 2000 square feet wall. i want to be done this work before 15th. If you intrested to do the work , Please contact.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: kc302, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              kheight,
              Text(
                'By : Anshid O',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kc30,
                ),
              ),
              kheight,
              Text(
                'From : Areakode',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kc30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
