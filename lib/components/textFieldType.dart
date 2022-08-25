import 'package:flutter/material.dart';
class TextFieldType extends StatelessWidget {
  const TextFieldType({Key? key, required this.textEditingController, required this.textInputType, required this.obscureText}) : super(key: key);
 final TextEditingController textEditingController;
 final TextInputType textInputType;
 final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller:textEditingController ,
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xff8A8A8A) ,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8), ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xff8A8A8A) ,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8), ),
          ),


        ),
      ),
    );
  }
}
