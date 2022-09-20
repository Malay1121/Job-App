import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/welcome_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return SplashScreenView(
      imageSrc: 'assets/logo.png',
      backgroundColor: darkPurple,
      duration: 3000,
      textStyle: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: dmsans,
        fontSize: _mediaQuery.width / 14.4230769231,
      ),
      imageSize: (_mediaQuery.width / 6.25).round(),
      navigateRoute: WelcomeScreen(),
      text: 'Jobspot',
    );
  }
}
