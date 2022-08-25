// ignore: file_names
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);
  final string = "  La Vie  ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 77,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/Photes/Branding and Packaging for Planty Plant Based Milk - World Brand Design Society 1 (Traced).png"),
                ),
              ),
              child: TweenAnimationBuilder(
                builder: (BuildContext? context, int? value, Widget? child) {
                  return Text(
                      style: const TextStyle(fontFamily: 'Meddon', fontSize: 36),
                      string.substring(0, value));
                },
                duration: const Duration(seconds: 2),
                tween: IntTween(begin: 0, end: string.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
