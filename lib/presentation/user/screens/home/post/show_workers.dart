import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/post/build_list.dart';

// import 'package:workerr_app/presentation/user/widgets/my_text_form.dart';

class ShowWorkers extends StatefulWidget {
  ShowWorkers({Key? key}) : super(key: key);

  @override
  State<ShowWorkers> createState() => _ShowWorkersState();
}

bool? tick = false;
List<String> toplist = [];
bool isDescending = false;
List<String> workers = [
  'Anshid O',
  'Yaseen',
  'Hisham',
  'Nijas Ali',
  'Sidheeq',
  'Junaid',
  'Althaf',
  'Adil',
  'Mishal',
];

List<String> pinCodes = [
  '673661',
  '673662',
  '673624',
  '673667',
  '673672',
];
String selectedPin = '673661';

List<String> districts = [
  'Kozhikkode',
  'Malappuram',
  'Kannur',
  'Vazhanadu',
  'Thrissur',
];
String selectedDis = 'Kozhikkode';

List<String> rating = [
  '< 2 Star',
  '< 2.5 Star',
  '< 3 Star',
  '< 3.5 Star',
  '< 4 Star',
  '< 4.5 Star',
  '< 5 Star',
];
String selectedrating = '< 3 Star';

class _ShowWorkersState extends State<ShowWorkers> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        // bottomOpacity: 0,
        // foregroundColor: Colors.white,
        backgroundColor: kc602,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(children: const [
          Text(
            'Request',
            style: TextStyle(
              color: kc30,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        actions: [
          TextButton.icon(
            onPressed: () {
              setState(() {
                isDescending = !isDescending;
              });
            },
            icon: const RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.compare_arrows,
                size: 28,
              ),
            ),
            label: Text(isDescending ? 'Ascending' : 'Descending',
                style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color.fromARGB(255, 203, 93, 19),
                  gradient: kc30gd),
              // color: Color.fromARGB(255, 31, 31, 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kheight,
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Search in:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  kheight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      kwidth,
                      SizedBox(
                        width: 120,
                        child: DropdownButtonFormField<String>(
                          alignment: Alignment.centerLeft,
                          dropdownColor: kc30,
                          focusColor: Colors.amber,
                          isExpanded: true,
                          // borderRadius: BorderRadius.circular(0),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 2.2, color: kc10))),
                          value: selectedDis,
                          items: districts
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            setState(() {
                              selectedDis = item!;
                            });
                          },
                        ),
                      ),
                      ksize(y: 2),
                      SizedBox(
                        width: 90,
                        child: DropdownButtonFormField<String>(
                          alignment: Alignment.centerLeft,
                          dropdownColor: kc30,
                          focusColor: Colors.amber,
                          isExpanded: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 2.2, color: kc10))),
                          value: selectedPin,
                          items: pinCodes
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            setState(() {
                              selectedPin = item!;
                            });
                          },
                        ),
                      ),
                      ksize(y: 2),
                      SizedBox(
                        width: 90,
                        child: DropdownButtonFormField<String>(
                          alignment: Alignment.centerLeft,
                          dropdownColor: kc30,
                          focusColor: Colors.amber,
                          isExpanded: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 2.2, color: kc10))),
                          value: selectedrating,
                          items: rating
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            setState(() {
                              selectedrating = item!;
                            });
                          },
                        ),
                      ),
                      kwidth
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Filter by my Favorite :',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Checkbox(
                          value: tick,
                          onChanged: (value) {
                            setState(() {
                              tick = value;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: BuildList()),
          Center(
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), gradient: kc30gd),
              child: Center(
                child: TextButton(
                  onHover: (hovered) => setState(() {
                    isPressed = hovered;
                  }),
                  style: TextButton.styleFrom(
                      side: const BorderSide(color: kc60, width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  onLongPress: () {
                    Navigator.pop(context);
                  },
                  child: Listener(
                    onPointerDown: (event) => setState(() {
                      isPressed = true;
                    }),
                    onPointerUp: (event) => setState(() {
                      isPressed = false;
                    }),
                    child: Center(
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          shadows: [
                            for (double i = 1; i < (isPressed ? 10 : 6); i++)
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
    );
  }
}
