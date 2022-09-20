import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/job_description.dart';
import 'package:job_app/screens/posting.dart';
import 'package:job_app/screens/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWidth(23, context),
                  right: responsiveWidth(23, context),
                  top: responsiveHeight(43.56, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: responsiveHeight(239, context),
                        width: responsiveWidth(329, context),
                      ),
                      SizedBox(
                        width: responsiveWidth(322, context),
                        height: responsiveHeight(72, context),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Hello\nOrlando Diggs.',
                              style: TextStyle(
                                color: Color(0xFF0D0140),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(22, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/profile.png'),
                                  radius: responsiveWidth(18.72, context),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: responsiveHeight(181, context),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: responsiveHeight(143, context),
                                width: responsiveWidth(329, context),
                                decoration: BoxDecoration(
                                  color: darkPurple,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: responsiveWidth(17, context),
                                    bottom: responsiveHeight(31, context),
                                    top: responsiveHeight(24, context),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '50% off',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: dmsans,
                                          fontSize:
                                              responsiveWidth(18, context),
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                        ),
                                      ),
                                      Text(
                                        'take any courses',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: dmsans,
                                          fontSize:
                                              responsiveWidth(18, context),
                                          height: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: responsiveHeight(17, context),
                                      ),
                                      Container(
                                        height: responsiveHeight(26, context),
                                        width: responsiveWidth(90, context),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Color(0xFFFF9228),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Join Now',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: dmsans,
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  responsiveWidth(13, context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image(
                                image: AssetImage('assets/girl.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(24, context),
                  ),
                  Text(
                    'Find Your Job',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: dmsans,
                      fontSize: responsiveHeight(16, context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(10, context),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchScreen()));
                    },
                    child: Container(
                      height: responsiveHeight(40, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: responsiveWidth(5, context),
                          right: responsiveWidth(5, context),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Search for job',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.search,
                              color: Colors.grey.shade700,
                              size: responsiveWidth(20, context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(10, context),
                  ),
                  SizedBox(
                    height: responsiveHeight(170, context),
                    width: responsiveWidth(326, context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: responsiveWidth(150, context),
                          height: responsiveHeight(170, context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xFFAFECFE),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: responsiveHeight(34, context),
                                width: responsiveWidth(34, context),
                                image: AssetImage('assets/remote.png'),
                              ),
                              SizedBox(
                                height: responsiveHeight(14, context),
                              ),
                              Text(
                                '44.5k',
                                style: TextStyle(
                                  color: Color(0xFF0D0140),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(16, context),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: responsiveHeight(6, context),
                              ),
                              Text(
                                'Remote Job',
                                style: TextStyle(
                                  color: Color(0xFF0D0140),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(14, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: responsiveWidth(156, context),
                              height: responsiveHeight(75, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFFBEAFFE),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '66.8k',
                                    style: TextStyle(
                                      color: Color(0xFF0D0140),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(16, context),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: responsiveHeight(6, context),
                                  ),
                                  Text(
                                    'Full Time',
                                    style: TextStyle(
                                      color: Color(0xFF0D0140),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(14, context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: responsiveWidth(156, context),
                              height: responsiveHeight(75, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFFFFD6AD),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '38.9k',
                                    style: TextStyle(
                                      color: Color(0xFF0D0140),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(16, context),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: responsiveHeight(6, context),
                                  ),
                                  Text(
                                    'Part Time',
                                    style: TextStyle(
                                      color: Color(0xFF0D0140),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(14, context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(19, context),
                  ),
                  JobCard2(
                    mediaQuery: _mediaQuery,
                    position: 'Product Designer',
                    company: 'Apple inc',
                    address: 'California, USA',
                    salary: '15K',
                    postedTime: '',
                    tag1: 'Senior designer',
                    tag2: 'Full time',
                    tag3: 'Apply',
                    logo: 'assets/apple.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: responsiveHeight(56, context),
            ),
          ],
        ),
      ),
    );
  }
}

class JobCard2 extends StatelessWidget {
  const JobCard2({
    Key? key,
    required Size mediaQuery,
    required this.position,
    required this.company,
    required this.address,
    required this.salary,
    required this.postedTime,
    required this.tag1,
    required this.tag2,
    required this.tag3,
    required this.logo,
  })  : _mediaQuery = mediaQuery,
        super(key: key);

  final Size _mediaQuery;
  final String position;
  final String company;
  final String address;
  final String salary;
  final String postedTime;
  final String tag1;
  final String tag2;
  final String tag3;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: _mediaQuery.height / 40.6,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JobDescription(
                  logo: logo,
                  tag1: tag1,
                  tag2: tag2,
                  tag3: tag3,
                  position: position,
                  company: company,
                  address: address,
                  salary: salary,
                  mediaQuery: _mediaQuery,
                ),
              ),
            );
          },
          child: Container(
            width: _mediaQuery.width / 1.11940298507,
            height: responsiveHeight(149, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: _mediaQuery.width / 18.75,
                top: _mediaQuery.height / 40.6,
                right: _mediaQuery.width / 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: _mediaQuery.width / 18.75,
                        child: Padding(
                          padding: EdgeInsets.all(
                            _mediaQuery.width / 53.5714285714,
                          ),
                          child: Image.asset(logo),
                        ),
                        backgroundColor: Color(0xFFF5F5F5),
                      ),
                      SizedBox(
                        width: responsiveWidth(10, context),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            position,
                            style: TextStyle(
                              color: Color(0xFF150A33),
                              fontWeight: FontWeight.w700,
                              fontFamily: dmsans,
                              fontSize: _mediaQuery.width / 26.7857142857,
                            ),
                          ),
                          Text(
                            '$company • $address',
                            style: TextStyle(
                              color: Color(0xFF524B6B),
                              fontFamily: dmsans,
                              fontSize: _mediaQuery.width / 31.25,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.bookmark_outline,
                        color: Color(
                          0xFF524B6B,
                        ),
                        size: _mediaQuery.width / 13.75,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _mediaQuery.height / 81.2,
                  ),
                  SizedBox(
                    height: _mediaQuery.height / 40.6,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$' + salary,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: dmsans,
                          fontSize: _mediaQuery.width / 26.7857142857,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '/Mo',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: _mediaQuery.width / 26.7857142857,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _mediaQuery.height / 54.1333333333,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JobTags(
                        mediaQuery: _mediaQuery,
                        text: tag1,
                      ),
                      JobTags(
                        mediaQuery: _mediaQuery,
                        text: tag2,
                      ),
                      JobTags(
                        mediaQuery: _mediaQuery,
                        text: tag3,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
