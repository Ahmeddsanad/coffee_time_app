import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class Welcomeback extends StatelessWidget {
  const Welcomeback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: const Text(
        'Welcome Back!',
        style: TextStyle(
            color: mPrimaryColor,
            fontSize: 32,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}