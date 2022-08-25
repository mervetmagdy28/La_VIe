import 'package:flutter/material.dart';

class LabelName extends StatelessWidget {
  const LabelName({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(name,style: const TextStyle(color: Color(0xff8A8A8A)),),
        ],
      ),
    );
  }
}
