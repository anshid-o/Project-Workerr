import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';

class WaitingCard2 extends StatefulWidget {
  WaitingCard2({Key? key}) : super(key: key);

  @override
  State<WaitingCard2> createState() => _WaitingCard2State();
}

class _WaitingCard2State extends State<WaitingCard2> {
  List<String> status2 = [
    'Requested',
    'Accepted',
    'Verified',
    'Rejected',
  ];
  bool isPressed = false;
  String selectedStatus = 'Requested';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.white,
          gradient: kmygd,
          borderRadius: BorderRadius.circular(15),
        ),
        // color: Colors.white,
        child: ExpansionTile(
          title: const Text(
            'Mechanic',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kc30,
                letterSpacing: 3),
          ),
          leading: const Icon(
            CupertinoIcons.paintbrush,
            // shadows: [Shadow(color: kc30, offset: Offset(2, 2), blurRadius: 3)],
            size: 30,
            color: kc30,
          ),
          trailing: IconButton(
            tooltip: 'Update Status',
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: kc602,
                  isScrollControlled: true,
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  builder: (context) => Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Choose Status :',
                                  style: TextStyle(
                                      color: kc30,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                ksize(y: 8),
                                SizedBox(
                                  width: 200,
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                                width: 4, color: kblue3))),
                                    value: selectedStatus,
                                    items: status2
                                        .map(
                                          (item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (item) {
                                      setState(() {
                                        selectedStatus = item!;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                            kheight,
                            if (selectedStatus != 'Requested') kheight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ksize(y: 85),
                                Container(
                                  width: 115,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: kc10,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: TextButton(
                                      onHover: (hovered) => setState(() {
                                        isPressed = hovered;
                                      }),
                                      style: TextButton.styleFrom(
                                          side: const BorderSide(
                                              color: Colors.white, width: 3),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {
                                        // await Future.delayed(const Duration(milliseconds: 800));

                                        Navigator.pop(context);
                                      },
                                      onLongPress: () {
                                        // Navigator.pop(context);
                                      },
                                      child: Listener(
                                        onPointerDown: (event) => setState(() {
                                          isPressed = true;
                                        }),
                                        onPointerUp: (event) => setState(() {
                                          isPressed = false;
                                        }),
                                        child: SizedBox(
                                          width: 100,
                                          height: 30,
                                          child: Center(
                                            child: Text(
                                              'Update',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                shadows: [
                                                  for (double i = 1;
                                                      i < (isPressed ? 10 : 6);
                                                      i++)
                                                    const Shadow(
                                                      color: kshadowColor,
                                                      blurRadius: 3,
                                                    )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ));
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => UpdateStatus(),
              //   ),
              // );
            },
            icon: const Icon(
              Icons.domain_verification_rounded,
              size: 50,
              color: kc10,
              shadows: kshadow,
            ),
          ),
          subtitle: const Text(
            '14/07/2022',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kc30,
            ),
          ),
          children: const [
            kheight,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'I was worked as an assistant mechanic at zen Shop for past 2 years. Conact number to zen shop : 9472647283',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: kblue3, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            kheight,
            Text(
              'Experience - 2 years',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Phone number - 9645805081',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
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
            Text(
              'From : Koolimadu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kc30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
