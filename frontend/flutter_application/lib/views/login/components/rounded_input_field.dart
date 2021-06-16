import 'package:flutter/material.dart';
import 'package:flutter_application/views/login/components/container.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
