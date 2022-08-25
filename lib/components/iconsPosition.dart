import 'package:flutter/material.dart';

class IconsPosition extends StatelessWidget {
  const IconsPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Image(
              image: AssetImage("assets/Photes/Google.png"),
              width: 40),
          Image(
              image: AssetImage("assets/Photes/Facebook.png"),
              width: 30)
        ],
      ),
    );
  }
}
