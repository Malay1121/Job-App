import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/add_job.dart';
import 'package:job_app/screens/add_post.dart';
import 'package:job_app/screens/home_screen.dart';
import 'package:job_app/screens/message_screen.dart';
import 'package:job_app/screens/posting.dart';
import 'package:ndialog/ndialog.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

var _bottomNavIndex = 0;
Widget mainScreen = HomeScreen();

bool addButton = false;

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        DefaultTabController(
          length: 5,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  addButton = true;
                });
              },
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
              onTap: (index) {
                setState(() => _bottomNavIndex = index);

                setState(() {
                  mainScreen = index == 0
                      ? HomeScreen()
                      : index == 1
                          ? Posting()
                          : index == 2
                              ? MessageScreen()
                              : Container();
                });
              },
            ),
            body: mainScreen,
          ),
        ),
        addButton == true
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    addButton = false;
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Color(0xFF2C373B).withOpacity(0.6),
                ),
              )
            : SizedBox(),
        addButton == true
            ? Container(
                width: double.infinity,
                height: responsiveHeight(308, context),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: responsiveHeight(25, context),
                    ),
                    Container(
                      width: responsiveWidth(30, context),
                      height: responsiveHeight(4, context),
                      decoration: BoxDecoration(
                          color: Color(0xFF0D0140),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(
                      height: responsiveHeight(50, context),
                    ),
                    Text(
                      'What would you like to add?',
                      style: TextStyle(
                        color: Color(0xFF150B3D),
                        fontFamily: dmsans,
                        fontSize: responsiveWidth(16, context),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(10, context),
                    ),
                    SizedBox(
                      width: responsiveWidth(288, context),
                      child: Text(
                        'Would you like to post your tips and experiences or create a job?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(29, context),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddPost()));
                      },
                      child: Container(
                        width: responsiveWidth(317, context),
                        height: responsiveHeight(50, context),
                        decoration: BoxDecoration(
                          color: Color(0xFF130160),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            'Post'.toUpperCase(),
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontFamily: dmsans,
                              fontWeight: FontWeight.w700,
                              fontSize: responsiveWidth(14, context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(10, context),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Container(
                        width: responsiveWidth(317, context),
                        height: responsiveHeight(50, context),
                        decoration: BoxDecoration(
                          color: Color(0xFFD6CDFE),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            'Make a job'.toUpperCase(),
                            style: TextStyle(
                              decoration: TextDecoration.none,
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
            : SizedBox(),
      ],
    );
  }
}
