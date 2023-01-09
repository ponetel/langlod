import 'package:flutter/material.dart';

class checkBoxLT extends StatefulWidget {
  const checkBoxLT({Key? key}) : super(key: key);

  @override
  State<checkBoxLT> createState() => _checkBoxLTState();
}

class _checkBoxLTState extends State<checkBoxLT> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.green;
    }

    return Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}