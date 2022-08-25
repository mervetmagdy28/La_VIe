import 'package:flutter/material.dart';
class PhotoPosition extends StatelessWidget {
  const PhotoPosition({Key? key, required this.assetsName, required this.mainAxisAlignment}) : super(key: key);
  final String assetsName;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Image(
            image: AssetImage(
                assetsName)),
      ],
    );
  }
}
