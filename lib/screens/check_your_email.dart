import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/forgot_password.dart';
import 'package:job_app/screens/login.dart';
import 'package:job_app/screens/password_changed.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
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
                'Check Your Email',
                style: TextStyle(
                  color: darkPurple,
                  fontFamily: dmsans,
                  fontSize: _mediaQuery.width / 12.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: _mediaQuery.width / 1.18865979381,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'We have sent the reset password to the email address ',
                    style: TextStyle(
                      color: Color(0xFF524B6B),
                      fontFamily: dmsans,
                      fontSize: _mediaQuery.width / 31.25,
                    ),
                    children: [
                      TextSpan(
                        text: 'brandonelouis@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: _mediaQuery.height / 15.6153846154,
              ),
              SvgPicture.asset(
                'assets/checkemail_vector.svg',
                width: _mediaQuery.width / 3,
                height: _mediaQuery.height / 7.4495412844,
              ),
              SizedBox(
                height: _mediaQuery.height / 8.63829787234,
              ),
              Button1(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PasswordChanged()));
                },
                mediaQuery: _mediaQuery,
                title: 'open your email',
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
              RichText(
                text: TextSpan(
                  text: 'You have not received the email? ',
                  style: TextStyle(
                    color: Color(0xFF524B6B),
                    fontFamily: dmsans,
                    fontSize: _mediaQuery.width / 31.25,
                  ),
                  children: [
                    TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: Color(0xFFFF9228),
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () => null),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
