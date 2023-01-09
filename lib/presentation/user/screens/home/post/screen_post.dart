import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/screens/home/post/show_workers.dart';
// import 'package:workerr_app/presentation/user/widgets/my_app_bar.dart';
import 'package:workerr_app/presentation/user/widgets/my_tabbed_appbar.dart';

class ScreenPost extends StatefulWidget {
  const ScreenPost({Key? key}) : super(key: key);

  @override
  State<ScreenPost> createState() => _ScreenPostState();
}

class _ScreenPostState extends State<ScreenPost> {
  List<String> works = [
    'Plumbing',
    'Painting',
    'Fabrication works',
    'Electric repairs',
    'Mechanic',
    'Driver'
  ];

  String selectedItem = 'Plumbing';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kc30,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: AppBar(
              // surfaceTintColor: kc302,
              backgroundColor: kc30.withGreen(18),
              automaticallyImplyLeading: false,
              title: const Text(
                'Post a Work',
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                kheight,
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    CupertinoIcons.mail,
                    color: kc60,
                    shadows: kshadow2,
                    size: 70,
                  ),
                ),
                const Divider(
                  thickness: 0,
                  height: 0,
                ),
                Container(
                  width: 360,
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      gradient: const SweepGradient(
                          tileMode: TileMode.repeated,
                          center: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Color.fromARGB(255, 228, 222, 222),
                            Colors.white
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Text(
                          "Enter Details",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                            // fontStyle: FontStyle.italic,
                            // backgroundColor: kgold,
                            color: kc30,

                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            // decoration: TextDecoration.underline,
                            // decorationThickness: 1.3,
                            // decorationColor: kred,
                          ),
                        ),
                        kheight30,
                        kheight,
                        Row(
                          children: [
                            const Text(
                              'Type of Work : ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 229, 229, 229)),
                              child: DropdownButtonFormField<String>(
                                // dropdownColor: ,
                                // iconSize: 20,
                                elevation: 8,
                                // autofocus: true,
                                decoration: InputDecoration(
                                    fillColor: kgold,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                            width: 2, color: kc10))),
                                value: selectedItem,
                                items: works
                                    .map(
                                      (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold),
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
                        // MyTextForm(
                        //     name: 'Work', icon: Icons.work_outline_rounded),
                        kheight30,
                        kheight,
                        TextFormField(
                          minLines: 3,
                          maxLines: 5,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kc10.withOpacity(.1),
                            label: const Text(
                              'Details',
                              textAlign: TextAlign.start,
                            ),
                            prefixIcon: const Icon(CupertinoIcons.info),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: kc10, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 54, 9, 62)),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: kc10, width: 3.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),

                        // kheight30,
                      ],
                    ),
                  ),
                ),
                kheight20,
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => ShowWorkers()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kc10),
                      // elevation: MaterialStateProperty.all(4.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Post Work',
                      style: TextStyle(
                          color: Colors.white,
                          shadows: kshadow2,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
