import 'package:flutter/material.dart';
import 'package:hackathon_project/components/un_under_lined_word.dart';
import 'package:hackathon_project/components/underlined_word.dart';

import '../Login_Screen/LoginScreen.dart';
import '../Sign_Up_Screen/SignUp.dart';
class LoginWordsPosition extends StatelessWidget {
  const LoginWordsPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          UnUnderLinedWord(word: 'Sign Up', directionmode: (context) => SignUp()),
          UnderLinedWord(word: 'Login', directionmode: (context) => LoginScreen()),

        ],
      ),
    );
  }
}
