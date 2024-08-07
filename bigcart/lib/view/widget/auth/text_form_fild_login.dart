// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFormFieldLogin extends StatelessWidget {
  const TextFormFieldLogin(
      {super.key,
      required this.hint,
      required this.icon,
      this.obscureText,
      this.keyboardType,
      required this.controller,
      this.onTapicon});
  final String hint;
  final IconData? icon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final void Function()? onTapicon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: hint,
          hintTextDirection: TextDirection.rtl,
          hintStyle: Theme.of(context).textTheme.headlineSmall,
          suffixIcon: InkWell(onTap: onTapicon, child: Icon(icon)),
          suffixIconColor: Color.fromRGBO(134, 136, 137, 1),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 2))),
    );
  }
}
