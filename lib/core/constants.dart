import 'package:flutter/material.dart';

const kheight = SizedBox(height: 10);
const kheight20 = SizedBox(height: 20);
const kheight30 = SizedBox(height: 30);
const kwidth = SizedBox(width: 10);
const kwidth20 = SizedBox(width: 20);
const kwidth30 = SizedBox(width: 30);
ksize({double x = 0, double y = 0}) {
  return SizedBox(
    height: x,
    width: y,
  );
}

const kshadow = [
  Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 6)
];

const kshadow2 = [
  Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 5)
];

textDec(String name, String hint, IconData icon) {
  return InputDecoration(
    hintText: hint,

    fillColor: Colors.black,
    // helperText: 'Hi',
    label: Text(
      name,
      style: TextStyle(color: Colors.black),
    ),
    prefixIcon: Icon(
      icon,
      color: Colors.black,
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    hintStyle: const TextStyle(color: Colors.black),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 54, 9, 62), width: 3.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
  );
}

const ktextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
