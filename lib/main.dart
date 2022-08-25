import 'package:flutter/material.dart';
import 'package:hackathon_project/splash/Presentation_Layer.dart';

void main() async {

  runApp(const LaVie());
}

class LaVie extends StatefulWidget {
  const LaVie({Key? key}) : super(key: key);

  @override
  State<LaVie> createState() => _LaVieState();
}

class _LaVieState extends State<LaVie> {


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
