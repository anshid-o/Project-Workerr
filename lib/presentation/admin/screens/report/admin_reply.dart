import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';

class AdminReply extends StatelessWidget {
  const AdminReply({Key? key}) : super(key: key);

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
              // automaticallyImplyLeading: false,
              title: const Text(
                'Give Reply',
                style: TextStyle(
                    color: kc60, fontSize: 20, fontWeight: FontWeight.bold),
              ),
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
                              'Reply',
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
                      Navigator.pop(context);
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
                      'Send Reply',
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
