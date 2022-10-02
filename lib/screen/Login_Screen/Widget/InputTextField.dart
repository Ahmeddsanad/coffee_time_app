import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.label,
    required this.onChange,
    required this.password
  }) : super(key: key);

  final String label;
  final Function? onChange;
  final bool password;


  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged: (value)
      {
        onChange!(value);
      },
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
              color: Colors.grey
          ),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: mPrimaryColor,
                width: 2,
              )
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: mPrimaryColor,
                width: 2,
              )
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 0.5,
              )
          )
      ),
      obscureText: password,
    );
  }
}