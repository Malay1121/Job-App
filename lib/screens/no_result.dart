import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';

class NoResult extends StatefulWidget {
  const NoResult({Key? key}) : super(key: key);

  @override
  State<NoResult> createState() => _NoResultState();
}

class _NoResultState extends State<NoResult> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFF524B6B),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: _mediaQuery.height / 20.3,
                width: responsiveWidth(335, context),
                child: TextField(
                  cursorColor: Color(
                    0xFFAAA6B9,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color(
                        0xFFAAA6B9,
                      ),
                      fontFamily: dmsans,
                      fontSize: _mediaQuery.width / 31.25,
                    ),
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFAAA6B9),
                      size: _mediaQuery.width / 15.625,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    hintText: 'Design',
                    hintStyle: TextStyle(
                      color: Color(
                        0xFFAAA6B9,
                      ),
                      fontFamily: dmsans,
                      fontSize: _mediaQuery.width / 31.25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(134, context),
              ),
              Image(
                image: AssetImage('assets/no_result.png'),
                width: responsiveWidth(156.32, context),
                height: responsiveHeight(176.82, context),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: responsiveHeight(50, context),
              ),
              Text(
                'No results found',
                style: TextStyle(
                  color: Color(0xFF150B3D),
                  fontFamily: dmsans,
                  fontWeight: FontWeight.w700,
                  fontSize: responsiveWidth(16, context),
                ),
              ),
              SizedBox(
                height: responsiveHeight(20, context),
              ),
              SizedBox(
                width: responsiveWidth(251, context),
                child: Text(
                  'The search could not be found, please check spelling or write another word.',
                  style: TextStyle(
                    color: Color(0xFF524B6B),
                    fontFamily: dmsans,
                    fontSize: responsiveWidth(12, context),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
