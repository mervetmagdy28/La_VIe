import 'package:flutter/material.dart';
import 'package:hackathon_project/components/thinline.dart';
class OrContinueWithLine extends StatelessWidget {
  const OrContinueWithLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: const [
          ThinLine(),
          Text(
            "  or continue with  ",
            style: TextStyle(color: Color(0xff8A8A8A)),
          ),
          ThinLine(),

        ],
      ),
    );
  }
}

