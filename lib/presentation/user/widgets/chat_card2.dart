import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:workerr_app/core/colors.dart';
// import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/chat/chat_screen_child.dart';

class ChatCard2 extends StatelessWidget {
  const ChatCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            // gradient: kc30gd,
            color: kc602,
            borderRadius: BorderRadius.circular(15),
          ),
          // color: Colors.white,
          child: ExpansionTile(
            childrenPadding: const EdgeInsets.all(10),
            title: const Text(
              'Althaf',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: kc30,
              ),
            ),
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: kc30,
              backgroundImage: AssetImage('assets/3.jpg'),
            ),
            subtitle: const Text(
              '10/05/2021',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => ChatScreenChild(
                              name: 'Yaseen',
                            )));
              },
              icon: const Icon(CupertinoIcons.chat_bubble_2_fill),
              color: kc10,
              iconSize: 30,
            ),
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Hello, I am intrested to do the plumbing work.\nCan you call me when you are free ?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
