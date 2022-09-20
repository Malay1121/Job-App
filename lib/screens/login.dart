import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/forgot_password.dart';
import 'package:job_app/screens/home_screen.dart';
import 'package:job_app/screens/main_screen.dart';
import 'package:job_app/screens/search.dart';
import 'package:job_app/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginState extends State<Login> {
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
                'Welcome Back',
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
                title: 'Email',
                controller: _emailController,
                hint: 'Type in your email',
              ),
              SizedBox(
                height: _mediaQuery.height / 54.1333333333,
              ),
              TextFields(
                mediaQuery: _mediaQuery,
                title: 'Password',
                controller: _passwordController,
                hint: '●●●●●●●●',
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
                mediaQuery: _mediaQuery,
                title: 'Login',
                backgroudColor: darkPurple,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
              ),
              SizedBox(
                height: _mediaQuery.height / 40.6,
              ),
              RichText(
                text: TextSpan(
                  text: 'You don\'t have an account yet? ',
                  style: TextStyle(
                    color: Color(0xFF524B6B),
                    fontFamily: dmsans,
                    fontSize: _mediaQuery.width / 31.25,
                  ),
                  children: [
                    TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Color(0xFFFF9228),
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()))),
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

class Button1 extends StatelessWidget {
  const Button1({
    required Size mediaQuery,
    required this.title,
    required this.backgroudColor,
    required this.onTap,
    this.textColor = Colors.white,
  }) : _mediaQuery = mediaQuery;

  final Size _mediaQuery;
  final String title;
  final Color backgroudColor;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _mediaQuery.height / 16.24,
        width: _mediaQuery.width / 1.40977443609,
        decoration: BoxDecoration(
          color: backgroudColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: textColor,
              fontFamily: dmsans,
              fontSize: _mediaQuery.width / 26.7857142857,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  TextFields({
    required Size mediaQuery,
    required this.title,
    required this.controller,
    required this.hint,
  }) : _mediaQuery = mediaQuery;

  final Size _mediaQuery;
  final String title;
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF0D0140),
            fontFamily: dmsans,
            fontSize: _mediaQuery.width / 31.25,
            fontWeight: FontWeight.w700,
            height: 1,
          ),
        ),
        SizedBox(
          height: _mediaQuery.height / 81.2,
        ),
        SizedBox(
          width: _mediaQuery.width / 1.18296529968,
          height: _mediaQuery.height / 16.24,
          child: TextField(
            style: TextStyle(
              color: Color.fromRGBO(13, 1, 64, 0.6),
              fontFamily: dmsans,
              fontSize: _mediaQuery.width / 31.25,
            ),
            obscureText: title == 'Password' ? true : false,
            controller: controller,
            keyboardType: title == 'Email'
                ? TextInputType.emailAddress
                : title == 'Password'
                    ? TextInputType.visiblePassword
                    : TextInputType.text,
            decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Color.fromRGBO(13, 1, 64, 0.6),
                  fontFamily: dmsans,
                  fontSize: _mediaQuery.width / 31.25,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintStyle: TextStyle(
                  color: Color.fromRGBO(13, 1, 64, 0.6),
                  fontFamily: dmsans,
                  fontSize: _mediaQuery.width / 31.25,
                ),
                hintText: hint,
                fillColor: Colors.white70),
          ),
        ),
      ],
    );
  }
}
