import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => mPrimaryColor),
              shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ))
          ),
          onPressed: (){},
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}