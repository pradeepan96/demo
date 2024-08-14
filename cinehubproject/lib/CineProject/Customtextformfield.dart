
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatefulWidget {
  final String text;
  final Color colors;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const CustomTextFormField( {
    super.key,
    required this.text,
    required this.colors, required this.validator, required this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: TextFormField(
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
      ),
    );
  }
}