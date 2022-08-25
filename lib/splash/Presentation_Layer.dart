import 'package:flutter/material.dart';
import 'package:hackathon_project/Home_Page/homePage.dart';
import 'package:hackathon_project/components/once_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Login_Screen/LoginScreen.dart';
import '../widgets/Splash_Body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) async{

      final prefs = await SharedPreferences.getInstance();
      final String apiToken = prefs.getString("accessToken") ?? "";
      Widget screen;
      if(apiToken.isEmpty) {
        screen = LoginScreen();
      }
      else{
        screen =  OnceScreen();
      }

      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashBody(),
    );
  }
}
