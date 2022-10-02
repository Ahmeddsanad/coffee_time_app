import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';

class LoginWithFacebook extends StatelessWidget {
  const LoginWithFacebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric( horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: const BorderSide(
                          color: mFacebookColor
                      )
                  )),
                ),
                onPressed: (){},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      SvgPicture.asset('assets/images/facebook.svg'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text(
                        'Connect with facebook',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }
}