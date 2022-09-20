import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget bigPhone;
  final Widget smallPhone;

  const ResponsiveWidget(
      {Key? key, required this.bigPhone, required this.smallPhone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight < 750) {
        return smallPhone;
      } else {
        return bigPhone;
      }
    });
  }
}

double responsiveHeight(double height, BuildContext context) {
  var _mediaQuery = MediaQuery.of(context).size;
  var divide = 812 / height;
  var height1 = _mediaQuery.height / divide * 1.2;
  return height1;
}

double responsiveWidth(double width, BuildContext context) {
  var _mediaQuery = MediaQuery.of(context).size;

  var divide = 375 / width;
  var width1 = _mediaQuery.width / divide;
  return width1;
}
