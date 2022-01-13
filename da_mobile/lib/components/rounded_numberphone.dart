
import 'package:da_mobile/components/text_field_container.dart';
import 'package:da_mobile/constants.dart';
import 'package:flutter/material.dart';


class RoundedInputFieldphone extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldphone({
    Key key,
    this.hintText,
    this.icon = Icons.phone,
    
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
