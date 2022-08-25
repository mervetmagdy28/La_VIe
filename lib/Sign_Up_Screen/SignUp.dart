import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/signup_wrods_postion.dart';
import '../components/iconsPosition.dart';
import '../components/labelName.dart';
import '../components/or_continue_with_line.dart';
import '../components/photo_position.dart';
import '../components/textFieldType.dart';
import '../functios/sign_up_future.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                    const PhotoPosition(assetsName: 'assets/Photes/image 68 (Traced) (1).png', mainAxisAlignment: MainAxisAlignment.end,),

                    const PhotoPosition(assetsName: "assets/Photes/LaVie&picture.png", mainAxisAlignment: MainAxisAlignment.center),

                    const SignUpWordsPosition(),
                    const SizedBox(height: 50, width: 70),
                    const LabelName(name: "First Name"),
                    TextFieldType(
                        textEditingController: firstNameController,
                        textInputType: TextInputType.name,
                        obscureText: false),
                    const SizedBox(height: 30, width: 70),
                    const LabelName(name: "Last Name"),
                    TextFieldType(
                        textEditingController: lastNameController,
                        textInputType: TextInputType.name,
                        obscureText: false),
                    const SizedBox(height: 30, width: 70),
                    const LabelName(name: "Email"),
                    TextFieldType(
                        textEditingController: emailController,
                        textInputType: TextInputType.emailAddress,
                        obscureText: false),
                    const SizedBox(height: 30, width: 70),
                    const LabelName(name: "Password"),
                    TextFieldType(
                        textEditingController: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true),
                    const SizedBox(height: 30, width: 70),
                    const LabelName(name: "Confirm Password"),
                    TextFieldType(
                        textEditingController: confirmPasswordController,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true),
                    const SizedBox(height: 40, width: 70),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff1ABC00),
                            minimumSize: Size(350, 60)),
                        onPressed: () {
                          signUp(
                              firstNameController.text.toString(),
                              lastNameController.text.toString(),
                              emailController.text.toString(),
                              passwordController.text.toString());
                          if (firstNameController.text.toString().length < 3) {
                            Fluttertoast.showToast(
                                msg:
                                "Frist Name must be longer than or equal to 3 characters",
                                fontSize: 18,
                                backgroundColor: Colors.black,
                                textColor: Colors.white);
                          }
                          else if (lastNameController.text.toString().length <
                              3)
                            {
                            Fluttertoast.showToast(
                                msg:
                                    "Last Name must be longer than or equal to 3 characters",
                                fontSize: 18,
                                backgroundColor: Colors.black,
                                textColor: Colors.white);}
                          else if (!emailController.text
                              .toString()
                              .characters
                              .contains('@')) {
                            Fluttertoast.showToast(
                                msg: "In valid Email",
                                fontSize: 18,
                                backgroundColor: Colors.black,
                                textColor: Colors.white);
                          }
                          else if (passwordController.text.toString() !=
                              confirmPasswordController.text.toString()) {
                            Fluttertoast.showToast(
                                msg:
                                "Password too weak, add Symbol and Captial letters",
                                fontSize: 18,
                                backgroundColor: Colors.black,
                                textColor: Colors.white);
                          }
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(height: 30, width: 70),
                    const OrContinueWithLine(),
                    const SizedBox(height: 10, width: 70),
                    const IconsPosition(),
                    const PhotoPosition(assetsName: "assets/Photes/image 68 (Traced) (2).png", mainAxisAlignment: MainAxisAlignment.start),
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
