import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/screens/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        backgroundColor: darkPurple,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: _mediaQuery.height / 15.9215686275,
          right: _mediaQuery.width / 11.71875,
          left: _mediaQuery.width / 11.71875,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                Text(
                  'Jobspot',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: dmsans,
                    fontSize: _mediaQuery.width / 20.8333333333,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _mediaQuery.height / 10.7311827957,
            ),
            SvgPicture.asset(
              'assets/welcome_vector.svg',
              width: _mediaQuery.width / 1.40578778135,
              height: _mediaQuery.height / 2.6976744186,
            ),
            SizedBox(
              height: _mediaQuery.height / 12.4102564103,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: _mediaQuery.width / 1.70454545455,
                  child: RichText(
                    text: TextSpan(
                      text: 'Find Your ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: dmsans,
                        height: 1,
                        fontSize: _mediaQuery.width / 9.775,
                      ),
                      children: [
                        TextSpan(
                          text: 'Dream Job',
                          style: TextStyle(
                            color: Color(0xFFFCA34D),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: ' Here!')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: _mediaQuery.width / 1.32042253521,
                  child: Text(
                    'Explore all the most exciting job roles based on your interest and study major.',
                    style: TextStyle(
                      height: 1,
                      color: Color(0xFF524B6B),
                      fontFamily: dmsans,
                      fontSize: _mediaQuery.width / 26.7857142857,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
