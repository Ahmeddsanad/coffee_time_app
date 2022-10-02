// ignore_for_file: non_constant_identifier_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screen/Login_Screen/Widget/login_button.dart';
import 'package:untitled/screen/Login_Screen/Widget/login_form.dart';
import 'package:untitled/screen/Login_Screen/Widget/welcome_back.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const Welcomeback(),
              const LoginForm(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Forget password?',
                  style: TextStyle(
                    color: mPrimaryColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              const LoginButton(),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 16,
                ),
                child: RichText(
                  text: TextSpan(
                    children:
                    [
                      const TextSpan(text: 'Don\'t have an account? ',),
                      TextSpan(text: 'Register',
                      style: const TextStyle(
                        color: mPrimaryColor
                      ),
                        recognizer: TapGestureRecognizer()..onTap = ()
                        {
                          Navigator.pop(context);
                        } ,
                      )
                    ],
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Login',
        style: TextStyle(
          color: mPrimaryTextColor
        ),
      ),
      leading: IconButton(
        onPressed: ()
        {
          Navigator.pop(context);
        },
        icon: const Icon(
            Icons.arrow_back_ios,
            color: mPrimaryTextColor,
        ),
      ),
    );
  }
}





