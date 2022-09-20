import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/login.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({Key? key}) : super(key: key);

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: _mediaQuery.height / 7.96078431373,
              ),
              Text(
                'Successfully',
                style: TextStyle(
                  color: darkPurple,
                  fontFamily: dmsans,
                  fontSize: _mediaQuery.width / 12.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: _mediaQuery.width / 1.18865979381,
                child: Text(
                  'Your password has been updated, please change your password regularly to avoid this happening ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF524B6B),
                    fontFamily: dmsans,
                    fontSize: _mediaQuery.width / 31.25,
                  ),
                ),
              ),
              SizedBox(
                height: _mediaQuery.height / 15.6153846154,
              ),
              SvgPicture.asset(
                'assets/password_vector.svg',
                width: _mediaQuery.width / 2.69784172662,
                height: _mediaQuery.height / 6.94017094017,
              ),
              SizedBox(
                height: _mediaQuery.height / 8.63829787234,
              ),
              Button1(
                onTap: () {},
                mediaQuery: _mediaQuery,
                title: 'continue',
                backgroudColor: darkPurple,
              ),
              SizedBox(
                height: _mediaQuery.height / 28,
              ),
              Button1(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                mediaQuery: _mediaQuery,
                title: 'back to login',
                backgroudColor: Color(0xFFD6CDFE),
              ),
              SizedBox(
                height: _mediaQuery.height / 27.0666666667,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
