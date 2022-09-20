import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/company_screen.dart';
import 'package:job_app/screens/uplaod_cv.dart';

class JobDescription extends StatefulWidget {
  JobDescription({
    required Size mediaQuery,
    required this.position,
    required this.company,
    required this.address,
    required this.salary,
    required this.tag1,
    required this.tag2,
    required this.tag3,
    required this.logo,
  });

  final String tag1;
  final String tag2;
  final String tag3;
  final String logo;
  final String position;
  final String company;
  final String address;
  final String salary;

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: Colors.black,
          ),
          backgroundColor: backgroundColor,
          body: ListView(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: responsiveHeight(63, context),
                      ),
                      Container(
                        height: responsiveHeight(114, context),
                        width: double.infinity,
                        color: Color(0xFFF3F2F2),
                        child: Column(
                          children: [
                            SizedBox(
                              height: responsiveHeight(35, context),
                            ),
                            Text(
                              widget.position,
                              style: TextStyle(
                                color: Color(0xFF0D0140),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(16, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 3 -
                                      15,
                                  child: Center(
                                    child: Text(
                                      widget.company,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color(0xFF0D0140),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(16, context),
                                      ),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: responsiveWidth(3.5, context),
                                  backgroundColor: Color(0xFF0D0140),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 3 -
                                      15,
                                  child: Center(
                                    child: Text(
                                      widget.tag2,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color(0xFF0D0140),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(16, context),
                                      ),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: responsiveWidth(3.5, context),
                                  backgroundColor: Color(0xFF0D0140),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 3 -
                                      15,
                                  child: Center(
                                    child: Text(
                                      widget.tag3,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color(0xFF0D0140),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(16, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(24, context),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Center(
                              child: Text(
                                '${widget.salary}/mo',
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Color(0xFF0D0140),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(14, context),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Center(
                              child: Text(
                                widget.tag2,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Color(0xFF0D0140),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(14, context),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Center(
                              child: Text(
                                widget.position,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Color(0xFF0D0140),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(14, context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: responsiveHeight(23, context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Description',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            SizedBox(
                              height: responsiveHeight(80, context),
                              child: Text(
                                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem',
                                maxLines: 5,
                                style: TextStyle(
                                  color: Color(
                                    0xFF524B6B,
                                  ),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(10, context),
                            ),
                            Container(
                              height: responsiveHeight(30, context),
                              width: responsiveWidth(91, context),
                              decoration: BoxDecoration(
                                color: Color(0xFF7551FF).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  'Read more',
                                  style: TextStyle(
                                    color: Color(0xFF0D0140),
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
                              'Requirements',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            BulletPoints(
                              text:
                                  'Sed ut perspiciatis unde omnis iste natus error sit.',
                            ),
                            BulletPoints(
                              text:
                                  'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit.',
                            ),
                            BulletPoints(
                              text:
                                  'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.',
                            ),
                            BulletPoints(
                              text:
                                  'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur',
                            ),
                            SizedBox(
                              height: responsiveHeight(25, context),
                            ),
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            Text(
                              widget.address,
                              style: TextStyle(
                                color: Color(0xFF524B6B),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(17, context),
                            ),
                            Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/map.png'),
                              height: responsiveHeight(151, context),
                              width: responsiveWidth(333, context),
                            ),
                            SizedBox(
                              height: responsiveHeight(25, context),
                            ),
                            Text(
                              'Informations',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            JobInfo(
                              widget: widget,
                              title: 'Position',
                              value: widget.position,
                            ),
                            JobInfo(
                              widget: widget,
                              title: 'Qualification',
                              value: 'Bachelor’s Degree',
                            ),
                            JobInfo(
                              widget: widget,
                              title: 'Experience',
                              value: '3 Years',
                            ),
                            JobInfo(
                              widget: widget,
                              title: 'Job Type',
                              value: 'Full-Time',
                            ),
                            JobInfo(
                              widget: widget,
                              title: 'Specialization',
                              value: 'Design',
                            ),
                            SizedBox(
                              height: responsiveHeight(15, context),
                            ),
                            Text(
                              'Facilities and Others',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            BulletPoints(text: 'Medical'),
                            BulletPoints(text: 'Dental'),
                            BulletPoints(text: 'Technical Cartification'),
                            BulletPoints(text: 'Meal Allowance'),
                            BulletPoints(text: 'Transport Allowance'),
                            BulletPoints(text: 'Regular Hours'),
                            BulletPoints(text: 'Mondays-Fridays'),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UploadCV(
                                        position: widget.position,
                                        company: widget.company,
                                        address: widget.address,
                                        logo: widget.logo,
                                        salary: widget.salary,
                                        tag1: widget.tag1,
                                        tag2: widget.tag2,
                                        tag3: widget.tag3,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: responsiveHeight(50, context),
                                  width: responsiveWidth(270, context),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF130160),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Apply Now'.toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(14, context),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(28, context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompanyPage(
                              position: widget.position,
                              company: widget.company,
                              address: widget.address,
                              logo: widget.logo),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: responsiveWidth(42, context),
                      backgroundColor: Color(0xFFAFECFE),
                      child: Image(
                        fit: BoxFit.contain,
                        height: responsiveWidth(54.6, context),
                        width: responsiveWidth(54.6, context),
                        image: AssetImage(widget.logo),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class JobInfo extends StatelessWidget {
  const JobInfo({
    Key? key,
    required this.widget,
    required this.title,
    required this.value,
  }) : super(key: key);

  final JobDescription widget;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF150B3D),
            fontFamily: dmsans,
            fontSize: responsiveWidth(12, context),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: responsiveHeight(5, context),
        ),
        Text(
          value,
          style: TextStyle(
            color: Color(0xFF524B6B),
            fontFamily: dmsans,
            fontSize: responsiveWidth(12, context),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: responsiveHeight(15, context),
        ),
        Divider(
          endIndent: responsiveWidth(20, context),
          color: Color(0xFFDEE1E7),
          thickness: 1,
          height: 0,
        ),
        SizedBox(
          height: responsiveHeight(15, context),
        ),
      ],
    );
  }
}

class BulletPoints extends StatelessWidget {
  BulletPoints({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: responsiveWidth(2, context),
              backgroundColor: Color(0xFF524B6B),
            ),
            SizedBox(
              width: responsiveWidth(11, context),
            ),
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xFF524B6B),
                  fontFamily: dmsans,
                  fontSize: responsiveWidth(12, context),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: responsiveHeight(15, context),
        ),
      ],
    );
  }
}
