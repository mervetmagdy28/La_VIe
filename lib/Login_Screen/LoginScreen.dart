import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hackathon_project/Home_Page/homePage.dart';
import 'package:hackathon_project/components/once_screen.dart';

import '../Sign_Up_Screen/SignUp.dart';
import '../components/iconsPosition.dart';
import '../components/labelName.dart';
import '../components/login_words_position.dart';
import '../components/or_continue_with_line.dart';
import '../components/photo_position.dart';
import '../components/textFieldType.dart';

import '../functios/login_future.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  bool isHidePassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const PhotoPosition(
                        mainAxisAlignment: MainAxisAlignment.end,
                        assetsName: 'assets/Photes/image 68 (Traced) (1).png'),
                    const PhotoPosition(
                        assetsName: "assets/Photes/LaVie&picture.png",
                        mainAxisAlignment: MainAxisAlignment.center),
                    const LoginWordsPosition(),
                    const SizedBox(
                      height: 50,
                      width: 70,
                    ),
                    const LabelName(
                      name: "Email",
                    ),
                    TextFieldType(
                      textEditingController: emailController,
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 30,
                      width: 70,
                    ),
                    const LabelName(name: "Password"),
                    TextFieldType(
                        textEditingController: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true),
                    const SizedBox(
                      height: 40,
                      width: 70,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff1ABC00),
                            minimumSize: Size(350, 60)),
                        onPressed: () async{
                          var stcode = await login(
                            emailController.text.toString(),
                            passwordController.text.toString(),
                          );

                          if (stcode == 400) {
                            Fluttertoast.showToast(
                                msg: 'Incorrect Email or Password',
                                fontSize: 18,
                                backgroundColor: Colors.black,
                                textColor: Colors.white);
                          } else if (stcode == 200) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePage()));
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      height: 30,
                      width: 70,
                    ),
                    const OrContinueWithLine(),
                    const SizedBox(
                      height: 10,
                      width: 70,
                    ),
                    const IconsPosition(),
                    const PhotoPosition(
                        assetsName: "assets/Photes/image 68 (Traced) (2).png",
                        mainAxisAlignment: MainAxisAlignment.start),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
