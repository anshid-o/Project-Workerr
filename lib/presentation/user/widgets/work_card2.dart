import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/post/show_workers.dart';

class WorkCard2 extends StatefulWidget {
  int index;
  WorkCard2({Key? key, required this.index}) : super(key: key);

  @override
  State<WorkCard2> createState() => _WorkCard2State();
}

class _WorkCard2State extends State<WorkCard2> {
  List<String> status = [
    'Requested',
    'Accepted',
    'Completed',
    'Failed',
  ];
  // List<IconData> wicons = [CupertinoIcons.projective];
  List<String> works2 = [
    'Plumbing',
    'Painting',
    'Fabrication works',
    'Electric repairs',
    'Mechanic',
    'Driver',
    'Plumbing',
    'Painting',
    'Fabrication works',
    'Electric repairs',
    'Mechanic',
    'Driver',
    'Electric repairs',
    'Mechanic',
    'Driver'
  ];

  List<String> rate = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  String selectedStatus = 'Requested';

  String selectedrate = '3';

  String selectedItem = 'Anshid O';

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
            color: kc602,
            // gradient: kmygd,
            borderRadius: BorderRadius.circular(15),
          ),
          // color: Colors.white,
          child: ExpansionTile(
            // collapsedBackgroundColor: Colors.yellow,
            title: Text(
              works2[widget.index],
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: kc30,
                  letterSpacing: 1),
            ),
            leading: widget.index < 10
                ? Text(
                    '0${widget.index + 1}',
                    style: const TextStyle(
                      // color: kc30,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Text(
                    '0${widget.index + 1}',
                    style: const TextStyle(
                      // color: kc30,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

            //const Icon(
            //   CupertinoIcons.paintbrush_fill,
            //   // shadows: [
            //   //   Shadow(
            //   //       color: Color.fromARGB(255, 213, 140, 255),
            //   //       offset: Offset(2, 2),
            //   //       blurRadius: 3)
            //   // ],
            //   size: 30,
            //   color: kc30,
            // ),
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
                                      items: status
                                          .map(
                                            (item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                    fontSize: 15),
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
                              if (selectedStatus != 'Requested')
                                Row(
                                  children: [
                                    const Text(
                                      'Choose Worker :',
                                      style: TextStyle(
                                          color: kc30,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ksize(y: 3),
                                    SizedBox(
                                      width: 200,
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                borderSide: const BorderSide(
                                                    width: 4, color: kblue3))),
                                        value: selectedItem,
                                        items: workers
                                            .map(
                                              (item) =>
                                                  DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                      fontSize: 15),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                        onChanged: (item) {
                                          setState(() {
                                            selectedItem = item!;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              kheight,
                              if (selectedStatus == 'Completed')
                                Row(
                                  children: [
                                    const Text(
                                      'Rate :',
                                      style: TextStyle(
                                          color: kc30,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ksize(y: 80),
                                    SizedBox(
                                      width: 200,
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                borderSide: const BorderSide(
                                                    width: 4, color: kblue3))),
                                        value: selectedrate,
                                        items: rate
                                            .map(
                                              (item) =>
                                                  DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                      fontSize: 15),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                        onChanged: (item) {
                                          setState(() {
                                            selectedrate = item!;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              kheight,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ksize(y: 85),
                                  Container(
                                    width: 115,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: kc10,
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                          onPointerDown: (event) =>
                                              setState(() {
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
                                                        i <
                                                            (isPressed
                                                                ? 10
                                                                : 6);
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
                CupertinoIcons.news,
                color: kc10,
                size: 30,
                shadows: [
                  Shadow(color: kc10, offset: Offset(2, 0), blurRadius: 15)
                ],
              ),
            ),
            subtitle: Text(
              '${widget.index + 10}/05/2021',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kc30,
              ),
            ),
            // backgroundColor: Colors.cyan,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'I have a painting job to be done in my new shop, it has almost 2000 square feet wall. i want to be done this work before 15th. If you intrested to do the work , Please contact.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kc30, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
