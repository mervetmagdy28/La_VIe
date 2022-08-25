import 'package:flutter/material.dart';

class UnUnderLinedWord extends StatelessWidget {
  const UnUnderLinedWord({Key? key, required this.word, required this.directionmode}) : super(key: key);
  final String word;
  final Widget Function(BuildContext) directionmode;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Text(word,
          style: const TextStyle(
              color: Color(0xff8A8A8A), fontSize: 18)),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: directionmode));
      },
    );
  }
}
