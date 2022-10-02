import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class SliderDot extends StatelessWidget {
  const SliderDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: 6.0,
            height: 6.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: mPrimaryColor
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: 6.0,
            height: 6.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: mPrimaryColor.withOpacity(0.3)
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: 6.0,
            height: 6.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: mPrimaryColor.withOpacity(0.3)
            ),
          ),
        ],
      ),
    );
  }
}