import 'package:flutter/material.dart';
import 'package:untitled/screen/Login_Screen/Widget/InputTextField.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: const
        [
          InputTextField(
            label: 'Email',
            onChange: null,
            password: false,
          ),
          SizedBox(
            height: 16,
          ),
          InputTextField(
            label: 'Password',
            onChange: null,
            password: true,
          ),
        ],
      ),
    );
  }
}