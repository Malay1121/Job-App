import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/filter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

var _bottomNavIndex = 0;

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: darkPurple,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          backgroundColor: backgroundColor,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            activeColor: Color(0xFF0D0140),
            inactiveColor: Color(0xFFA49EB5),
            icons: iconList,
            activeIndex: _bottomNavIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            onTap: (index) => setState(() => _bottomNavIndex = index),
          ),
          body: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: _mediaQuery.height / 3.69090909091,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/homepage_background.png',
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: _mediaQuery.height / 27.0666666667,
                          left: _mediaQuery.width / 18.75,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: _mediaQuery.width / 15.625,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _mediaQuery.height / 23.8823529412,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: _mediaQuery.width / 12.9310344828,
                          right: _mediaQuery.width / 12.9310344828,
                        ),
                        child: SizedBox(
                          height: _mediaQuery.height / 20.3,
                          width: _mediaQuery.width / 1.18296529968,
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
                      ),
                      SizedBox(
                        height: _mediaQuery.height / 47.7647058824,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: _mediaQuery.width / 12.9310344828,
                          right: _mediaQuery.width / 12.9310344828,
                        ),
                        child: SizedBox(
                          height: _mediaQuery.height / 20.3,
                          width: _mediaQuery.width / 1.18296529968,
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
                                Icons.location_on,
                                color: Color(0xFFFF9228),
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
                              hintText: 'California, USA',
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
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: _mediaQuery.height / 40.6,
              ),
              SizedBox(
                height: responsiveHeight(40, context),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: responsiveWidth(26, context),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF372dad),
                        ),
                        height: responsiveHeight(40, context),
                        width: responsiveWidth(40, context),
                        child: Icon(
                          Icons.filter_alt,
                          color: Colors.white,
                          size: responsiveWidth(22, context),
                        ),
                      ),
                    ),
                    ButtonsTabBar(
                      unselectedBackgroundColor: Color(0xFFF5F4F6),
                      backgroundColor: Color(0xFF130160),
                      unselectedLabelStyle: TextStyle(
                        fontFamily: dmsans,
                        fontSize: _mediaQuery.width / 31.25,
                        color: Color(0xFF524B6B),
                      ),
                      labelStyle: TextStyle(
                        fontFamily: dmsans,
                        fontSize: _mediaQuery.width / 31.25,
                        color: Colors.white,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: _mediaQuery.width / 27.7777777778,
                        right: _mediaQuery.width / 27.7777777778,
                      ),
                      buttonMargin: EdgeInsets.only(left: 16),
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Senior designer',
                        ),
                        Tab(
                          text: 'Designer',
                        ),
                        Tab(
                          text: 'Full-time',
                        ),
                        Tab(
                          text: 'Part-time',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity - 1,
                height: responsiveHeight(500, context),
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: _mediaQuery.width / 18.75,
                        right: _mediaQuery.width / 18.75,
                      ),
                      child: Column(
                        children: [
                          JobCard(
                            mediaQuery: _mediaQuery,
                            position: 'UI/UX Designer',
                            company: 'Google inc',
                            address: 'California, USA',
                            tag1: 'Design',
                            tag2: 'Full time',
                            tag3: 'Senior designer',
                            postedTime: '25 minute ago',
                            salary: '15K',
                            logo: 'assets/google.png',
                          ),
                          JobCard(
                            mediaQuery: _mediaQuery,
                            position: 'Lead Designer',
                            company: 'Dribbble inc',
                            address: 'California, USA',
                            tag1: 'Design',
                            tag2: 'Full time',
                            tag3: 'Senior designer',
                            postedTime: '25 minute ago',
                            salary: '20K',
                            logo: 'assets/dribble.png',
                          ),
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
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

class JobCard extends StatelessWidget {
  const JobCard({
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
        Container(
          width: _mediaQuery.width / 1.11940298507,
          height: _mediaQuery.height / 3.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 62,
                offset: Offset(0, 4),
                color: Color(0xFF99ABC62E).withOpacity(0.18),
              ),
            ],
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
                SizedBox(
                  height: _mediaQuery.height / 40.6,
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
                ),
                SizedBox(
                  height: _mediaQuery.height / 54.1333333333,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      postedTime,
                      style: TextStyle(
                        fontFamily: dmsans,
                        fontSize: _mediaQuery.width / 37.5,
                        color: Color(0xFFAAA6B9),
                      ),
                    ),
                    Spacer(),
                    Text(
                      salary,
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
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class JobTags extends StatelessWidget {
  const JobTags({
    Key? key,
    required Size mediaQuery,
    required this.text,
  })  : _mediaQuery = mediaQuery,
        super(key: key);

  final Size _mediaQuery;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _mediaQuery.height / 31.2307692308,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: _mediaQuery.width / 15.9574468085,
          right: _mediaQuery.width / 15.9574468085,
          top: _mediaQuery.height / 124.923076923,
          bottom: _mediaQuery.height / 124.923076923,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF524B6B),
            fontFamily: dmsans,
            fontSize: _mediaQuery.width / 37.5,
          ),
        ),
      ),
    );
  }
}
