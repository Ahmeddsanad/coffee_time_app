import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screen/Login_Screen/LoginScreen.dart';

class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: Row(
        children :
        [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => mPrimaryColor),
                  shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36)
                  ))
              ),
              onPressed: (){},
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                child: const Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) =>
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)
                      )),
                  side: MaterialStateProperty.resolveWith((states) =>
                  const BorderSide(
                      color: mPrimaryColor
                  ))
              ),
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: mPrimaryTextColor
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}