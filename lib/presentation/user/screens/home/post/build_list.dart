import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/post/show_workers.dart';

class BuildList extends StatelessWidget {
  const BuildList({Key? key}) : super(key: key);

  // IconData icon = Icons.send_outlined;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workers.length,
      itemBuilder: ((context, index) {
        // final sortedItems = isDescending ? workers.reversed.toList() : workers;
        final sortedItems = workers
          ..sort((item1, item2) =>
              isDescending ? item2.compareTo(item1) : item1.compareTo(item2));
        final item = sortedItems[index];
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: kc602),
            child: ExpansionTile(
              //  tileColor: Colors.amber,
              // selectedTileColor: Colors.green,
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/2.jpg'),
                radius: 28,
                backgroundColor: kblue3,
                // child: Icon(
                //   Icons.person,
                //   size: 50,
                // ),
              ),
              title: Row(
                children: [
                  Text(item),
                  kwidth20,
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: kc302,
                    child: Icon(
                      Icons.done_outline_rounded,
                      size: 15,
                      color: kc10,
                    ),
                  ),
                ],
              ),
              subtitle: Text('${index + 1} years of Experience'),
              trailing: IconButton(
                splashColor: kc10,
                tooltip: 'Send Request',
                // focusColor: kred,
                // hoverColor: kred,
                onPressed: (() {
                  // setState(() {
                  //   icon = Icons.done;
                  // });
                }),
                icon: const Icon(
                  Icons.send_outlined,
                  color: kc10,
                ),
              ),
              children: const [
                Text(
                  'Areakode',
                  style: TextStyle(color: kblue3),
                ),
                kheight,
                Text(
                  'Rating : 4.2',
                  style: TextStyle(color: kblue3),
                ),
                kheight
              ],
            ),
          ),
        );
      }),
    );
  }
}
