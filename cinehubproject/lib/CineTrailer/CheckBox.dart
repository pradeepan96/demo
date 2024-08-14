
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const CheckboxExample({super.key,
    required this.isChecked,
    required this.onChanged,
    });

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: widget.isChecked,
          checkColor: Colors.black,
          activeColor: Colors.white,
          onChanged:widget.onChanged ,
        ),
      ],
    );
  }
}

