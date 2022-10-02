// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screen/Home_Screen/Widgets/Slider_dot.dart';
import 'package:untitled/screen/Home_Screen/Widgets/login_and_register.dart';
import 'package:untitled/screen/Home_Screen/Widgets/login_with_facebook.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/coffee_time.png'),
          const SliderDot(),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Get the best coffee \nin town !',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 32,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          const LoginAndRegister(),
          const LoginWithFacebook()
        ],
      ),
    );
  }
}
