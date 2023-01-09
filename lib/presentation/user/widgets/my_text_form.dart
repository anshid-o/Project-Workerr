import 'package:flutter/material.dart';
import 'package:workerr_app/core/colors.dart';

class MyTextForm extends StatelessWidget {
  String name;
  IconData icon;
  bool pas;
  TextInputType? type;
  MyTextForm(
      {Key? key,
      required this.name,
      required this.icon,
      this.pas = false,
      this.type = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      obscureText: pas,
      decoration: InputDecoration(
        filled: true,
        fillColor: kc60.withOpacity(.2),
        label: Text(
          name,
          style: const TextStyle(color: kc10),
        ),
        prefixIcon: Icon(
          icon,
          color: kc10,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kc10, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        hintStyle: const TextStyle(color: kc10),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kc10, width: 3.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
