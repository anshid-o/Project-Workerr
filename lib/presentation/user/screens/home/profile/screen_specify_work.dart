import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/widgets/my_text_form.dart';

class ScreenSpacifyWork extends StatelessWidget {
  const ScreenSpacifyWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kc30,
      appBar: AppBar(
        // shadowColor: Colors.white,
        // bottomOpacity: 0,
        // foregroundColor: Colors.white,
        backgroundColor: kc30.withGreen(18),
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: kc60,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(children: const [
          SizedBox(
            width: 25,
          ),
          Text(
            'Update Work Details',
            style: TextStyle(
              color: kc60,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: kc602,
                radius: 40,
                child: Icon(
                  Icons.workspace_premium_outlined,
                  shadows: kshadow2,
                  size: 60,
                ),
              ),
              kheight30,
              Form(
                child: Column(
                  children: [
                    MyTextForm(
                      name: 'Work',
                      icon: Icons.work_outline,
                      type: TextInputType.name,
                    ),
                    kheight20,
                    MyTextForm(
                        name: 'Experience', icon: Icons.group_work_outlined),
                    kheight20,
                    TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kc60.withOpacity(.2),
                        label: const Text(
                          'Details',
                          style: TextStyle(color: kc10),
                          textAlign: TextAlign.start,
                        ),
                        prefixIcon: const Icon(
                          Icons.details_rounded,
                          color: kc10,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: kc10, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 54, 9, 62)),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: kc10, width: 3.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),

                    // remining

                    kheight30,
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const UpdateProfile()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kc602),
                          // elevation: MaterialStateProperty.all(4.0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Update Work',
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              kheight30,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: kwhitegd2
                      // color: const Color.fromARGB(255, 255, 234, 234),
                      ),
                  child: const ExpansionTile(
                    title: Center(
                      child: Text(
                        'Status of Previous Update',
                        style: TextStyle(
                            color: kc30,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        'Work : Mechanic',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                            'I was worked as an assistant mechanic at zen Shop for past 2 years. Conact number to zen shop : 9472647283',
                            style: ktextStyle),
                      ),
                      kheight,
                      Text(
                        'Experience : 2 years',
                        style: ktextStyle,
                      ),
                      kheight,
                      Text(
                        'Date : 14/07/2022',
                        style: ktextStyle,
                      ),
                      kheight,
                      Text(
                        'Status : Request Accepted',
                        style: ktextStyle,
                      ),
                      kheight
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
