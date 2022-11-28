import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';

class PersonalChat extends StatefulWidget {
  const PersonalChat({Key? key, required this.name, required this.image})
      : super(key: key);

  final String name;
  final String image;

  @override
  State<PersonalChat> createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Container(
              height: responsiveHeight(156, context),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: responsiveWidth(20, context),
                      right: responsiveWidth(20, context),
                      top: responsiveHeight(20, context),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.arrow_back),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: responsiveWidth(20, context),
                      right: responsiveWidth(20, context),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: responsiveText(26, context),
                          backgroundImage: NetworkImage(widget.image),
                        ),
                        SizedBox(
                          width: responsiveWidth(11, context),
                        ),
                        SizedBox(
                          height: responsiveText(52, context),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Orlando Diggs',
                                style: TextStyle(
                                  color: Color(0xFF101828),
                                  fontFamily: dmsans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: responsiveText(14, context),
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF4EC133),
                                    radius: responsiveText(2.5, context),
                                  ),
                                  SizedBox(
                                    width: responsiveWidth(5, context),
                                  ),
                                  Text(
                                    'Online',
                                    style: TextStyle(
                                      color: Color(0xFF524B6B),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w400,
                                      fontSize: responsiveText(12, context),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.phone_outlined,
                          color: Color(0xFFFF9228),
                          size: responsiveText(23, context),
                        ),
                        SizedBox(
                          width: responsiveWidth(12, context),
                        ),
                        Icon(
                          Icons.search_outlined,
                          color: Color(0xFFFF9228),
                          size: responsiveText(23, context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView(),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: responsiveHeight(25, context),
                      left: responsiveWidth(20, context),
                      right: responsiveWidth(20, context),
                    ),
                    child: Row(children: [TextField()],),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
