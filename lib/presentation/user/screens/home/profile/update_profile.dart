import 'package:flutter/material.dart';

import 'package:workerr_app/core/colors.dart';
import 'package:workerr_app/core/constants.dart';
import 'package:workerr_app/presentation/user/widgets/my_text_form.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  // late String _age;
  int? _value = 1;

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
          kwidth20,
          kwidth20,
          kwidth30,
          Text(
            'Edit Profile',
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
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:
                            const Image(image: AssetImage('assets/mine.jpg'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kc60),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              kheight,
              Form(
                  child: Column(
                children: [
                  MyTextForm(
                    name: 'Full Name',
                    icon: Icons.person,
                    type: TextInputType.name,
                  ),
                  Row(
                    children: [
                      Radio(
                          overlayColor: MaterialStateProperty.all(kgold),
                          value: 1,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                      const Text(
                        'Male',
                        style:
                            TextStyle(color: kc10, fontWeight: FontWeight.bold),
                      ),
                      kwidth,
                      Radio(
                          overlayColor: MaterialStateProperty.all(kgold),
                          value: 2,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                      const Text(
                        'Female',
                        style:
                            TextStyle(color: kc10, fontWeight: FontWeight.bold),
                      ),
                      kwidth,
                      Radio(
                          overlayColor: MaterialStateProperty.all(kgold),
                          value: 3,
                          groupValue: _value,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                      const Text(
                        'Others',
                        style:
                            TextStyle(color: kc10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  MyTextForm(
                    name: 'Age',
                    icon: Icons.numbers,
                    type: TextInputType.number,
                  ),
                  kheight20,
                  MyTextForm(
                    name: 'Phone No',
                    icon: Icons.phone_android,
                    type: TextInputType.phone,
                  ),
                  kheight20,
                  MyTextForm(
                    name: 'Place',
                    icon: Icons.location_city_rounded,
                    type: TextInputType.streetAddress,
                  ),
                  kheight20,
                  MyTextForm(
                    name: 'PIN Code',
                    icon: Icons.local_post_office,
                    type: TextInputType.streetAddress,
                  ),
                  kheight20,
                  MyTextForm(
                    name: 'District',
                    icon: Icons.place,
                    type: TextInputType.streetAddress,
                  ),
                  kheight,

                  // For Age
                  // DropdownButton(items: () {
                  //   return DropdownMenuItem(
                  //     child: Text('Hi'),
                  //   );
                  // }, onChanged: (selValue) {
                  //   _age = selValue.toString();
                  // }),
                  // remining

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
                        backgroundColor: MaterialStateProperty.all(kc60),
                        // elevation: MaterialStateProperty.all(4.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: backgroundColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
