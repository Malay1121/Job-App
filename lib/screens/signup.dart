import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/forgot_password.dart';
import 'package:job_app/screens/login.dart';
import 'package:job_app/screens/main_screen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _SignupState extends State<Signup> {
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
                'Create an Account',
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
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF524B6B),
                    fontFamily: dmsans,
                    fontSize: _mediaQuery.width / 31.25,
                  ),
                ),
              ),
              SizedBox(
                height: _mediaQuery.height / 12.6875,
              ),
              TextFields(
                mediaQuery: _mediaQuery,
                title: 'Full Name',
                controller: _emailController,
                hint: 'Brandone Louis',
              ),
              SizedBox(
                height: _mediaQuery.height / 54.1333333333,
              ),
              TextFields(
                mediaQuery: _mediaQuery,
                title: 'Email',
                controller: _emailController,
                hint: 'Brandonelouis@gmail.com',
              ),
              SizedBox(
                height: _mediaQuery.height / 54.1333333333,
              ),
              TextFields(
                mediaQuery: _mediaQuery,
                title: 'Password',
                controller: _passwordController,
                hint: '● ● ● ● ● ● ● ●',
              ),
              SizedBox(
                height: _mediaQuery.height / 40.6,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: _mediaQuery.width / 11.71875,
                  right: _mediaQuery.width / 17.8571428571,
                ),
                child: Row(
                  children: [
                    Container(
                      height: _mediaQuery.width / 15.625,
                      width: _mediaQuery.width / 15.625,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E1FF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: _mediaQuery.width / 25,
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                        color: Color(0xFFAAA6B9),
                        fontFamily: dmsans,
                        fontSize: _mediaQuery.width / 31.25,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Color(0xFF0D0140),
                          fontFamily: dmsans,
                          fontSize: _mediaQuery.width / 31.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _mediaQuery.height / 25.375,
              ),
              Button1(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                mediaQuery: _mediaQuery,
                title: 'Signup',
                backgroudColor: darkPurple,
              ),
              SizedBox(
                height: _mediaQuery.height / 40.6,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: Color(0xFF524B6B),
                    fontFamily: dmsans,
                    fontSize: _mediaQuery.width / 31.25,
                  ),
                  children: [
                    TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                          color: Color(0xFFFF9228),
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          }),
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
