
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField2 extends StatefulWidget {
  final String text;
  final Color colors;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const CustomTextFormField2( {
    super.key,
    required this.text,
    required this.colors, required this.validator, required this.controller,
  });

  @override
  State<CustomTextFormField2> createState() => _CustomTextFormField2State();
}

class _CustomTextFormField2State extends State<CustomTextFormField2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator:widget.validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5,left: 10),
        filled: true,
        fillColor: Colors.white,
        hintText: widget.text,
        hintStyle: TextStyle(color: widget.colors),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
        ),
      ),
    );
  }
}