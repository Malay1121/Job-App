import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: responsiveWidth(20, context),
                top: responsiveHeight(20, context),
                right: responsiveWidth(20, context),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Spacer(),
                      Text(
                        'Post',
                        style: TextStyle(
                            color: Color(0xFFFF9228),
                            fontFamily: dmsans,
                            fontSize: responsiveWidth(12, context),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                  ),
                  Text(
                    'Add Post',
                    style: TextStyle(
                      color: Color(0xFF150B3D),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(16, context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(37, context),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: responsiveWidth(28, context),
                        child: Image(
                          width: responsiveWidth(56, context),
                          height: responsiveWidth(56, context),
                          image: AssetImage(
                            'assets/post_avatar.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: responsiveWidth(11, context),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Orlando Diggs',
                            style: TextStyle(
                              color: Color(0xFF150B3D),
                              fontFamily: dmsans,
                              fontSize: responsiveWidth(14, context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: responsiveHeight(5, context),
                          ),
                          Text(
                            'California, USA',
                            style: TextStyle(
                              color: Color(0xFF524B6B),
                              fontFamily: dmsans,
                              fontSize: responsiveWidth(12, context),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(28, context),
                  ),
                  Text(
                    'Post title',
                    style: TextStyle(
                      color: Color(0xFF150B3D),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(12, context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(10, context),
                  ),
                  Container(
                    width: responsiveWidth(335, context),
                    height: responsiveHeight(40, context),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 62,
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(153, 171, 198, 0.18),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Write the title of your post here',
                        hintStyle: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(25, context),
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Color(0xFF150B3D),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(12, context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(10, context),
                  ),
                  Container(
                    width: responsiveWidth(335, context),
                    height: responsiveHeight(155, context),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 62,
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(153, 171, 198, 0.18),
                        ),
                      ],
                    ),
                    child: TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                          top: responsiveHeight(17, context),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'What do you want to talk about?',
                        hintStyle: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: responsiveHeight(72, context),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: responsiveWidth(22, context),
                  ),
                  Icon(
                    Icons.camera_alt_rounded,
                    color: Color(0xFFFCA34D),
                    size: responsiveWidth(24, context),
                  ),
                  SizedBox(
                    width: responsiveWidth(20, context),
                  ),
                  Icon(
                    Icons.image,
                    color: Color(0xFFFCA34D),
                    size: responsiveWidth(24, context),
                  ),
                  Spacer(),
                  Text(
                    'Add hashtag',
                    style: TextStyle(
                      color: Color(0xFFFF9228),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(12, context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(20, context),
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
