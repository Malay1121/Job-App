import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

bool message = false;

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return message == false
        ? Center(
            child: Column(
              children: [
                SizedBox(
                  height: responsiveHeight(100, context),
                ),
                Image(
                  image: AssetImage('assets/no_message.png'),
                  height: responsiveHeight(239, context),
                  width: responsiveWidth(243, context),
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: responsiveHeight(42, context),
                ),
                Text(
                  'No Message',
                  style: TextStyle(
                    color: Color(0xFF150B3D),
                    fontFamily: dmsans,
                    fontWeight: FontWeight.w700,
                    fontSize: responsiveWidth(16, context),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(21, context),
                ),
                SizedBox(
                  width: responsiveWidth(240, context),
                  child: Text(
                    'You currently have no incoming messages thank you',
                    style: TextStyle(
                      color: Color(0xFF524B6B),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(12, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(42, context),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      message = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF130160),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 62,
                          offset: Offset(0, 4),
                          color: Color(0xFF99ABC62E).withOpacity(0.1),
                        ),
                      ],
                    ),
                    width: responsiveWidth(213, context),
                    height: responsiveHeight(50, context),
                    child: Center(
                      child: Text(
                        'Create a message'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: dmsans,
                          fontWeight: FontWeight.w700,
                          fontSize: responsiveWidth(14, context),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : message == true
            ? Scaffold(
                backgroundColor: backgroundColor,
                appBar: AppBar(
                  actions: [
                    Icon(
                      FontAwesomeIcons.penToSquare,
                      color: Color(0xFFFF9228),
                      size: responsiveWidth(20, context),
                    ),
                    SizedBox(
                      width: responsiveWidth(15, context),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Color(0xFF5B5858),
                      size: responsiveWidth(24, context),
                    ),
                    SizedBox(
                      width: responsiveWidth(10, context),
                    ),
                  ],
                  centerTitle: true,
                  title: Text(
                    'Messages',
                    style: TextStyle(
                        fontFamily: dmsans,
                        fontWeight: FontWeight.w700,
                        fontSize: responsiveWidth(20, context),
                        color: Colors.black),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                body: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: responsiveWidth(20, context),
                        right: responsiveWidth(20, context),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: responsiveHeight(50, context),
                            width: responsiveWidth(335, context),
                            child: TextField(
                              cursorColor: Color(
                                0xFFAAA6B9,
                              ),
                              style: TextStyle(
                                color: Color(
                                  0xFFAAA6B9,
                                ),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                  color: Color(
                                    0xFFAAA6B9,
                                  ),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFFAAA6B9),
                                  size: responsiveWidth(24, context),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                hintText: 'Search message',
                                hintStyle: TextStyle(
                                  color: Color(
                                    0xFFAAA6B9,
                                  ),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: responsiveWidth(25, context),
                                backgroundImage:
                                    AssetImage('assets/avatar.png'),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox();
  }
}
