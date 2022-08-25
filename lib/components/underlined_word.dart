import 'package:flutter/material.dart';

class UnderLinedWord extends StatelessWidget {
  const UnderLinedWord({Key? key, required this.word, required this.directionmode}) : super(key: key);
  final String word;
  final Widget Function(BuildContext) directionmode;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: GestureDetector(
            child: Text( word,
                style: const TextStyle(
                    color: Color(0xff1ABC00),
                    fontSize: 18)),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder:  directionmode));
            },
          ),
        ),
        Container(
          width: 50,
          height: 2,
          color: const Color(0xff1ABC00),
        )
      ],
    );
  }
}
