import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/check_your_email.dart';
import 'package:job_app/screens/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

TextEditingController _emailController = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
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
                'Forgot Password?',
                style: TextStyle(
                  color: darkPurple,
                  fontFamily: dmsans,
                  fontSize: _mediaQuery.width / 12.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: _mediaQuery.width / 1.28865979381,
                child: Text(
                  'To reset your password, you need your email or mobile number that can be authenticated',
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
                'assets/forgotpassword_vector.svg',
                width: _mediaQuery.width / 3.17258883249,
                height: _mediaQuery.height / 8.65487102963,
              ),
              SizedBox(
                height: _mediaQuery.height / 11.2496536437,
              ),
              TextFields(
                mediaQuery: _mediaQuery,
                title: 'Email',
                controller: _emailController,
                hint: 'Type in your email',
              ),
              SizedBox(
                height: _mediaQuery.height / 25.375,
              ),
              Button1(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckEmail()));
                },
                mediaQuery: _mediaQuery,
                title: 'reset password',
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
            ],
          ),
        ),
      ),
    );
  }
}
