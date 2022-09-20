import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/company_screen.dart';

class CVSubmitted extends StatefulWidget {
  CVSubmitted({
    required this.company,
    required this.address,
    required this.tag1,
    required this.tag2,
    required this.tag3,
    required this.logo,
    required this.position,
  });

  final String tag1;
  final String tag2;
  final String tag3;
  final String logo;
  final String position;
  final String company;
  final String address;

  @override
  State<CVSubmitted> createState() => _CVSubmittedState();
}

class _CVSubmittedState extends State<CVSubmitted> {
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
                        height: responsiveHeight(31, context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: responsiveHeight(75, context),
                              width: responsiveWidth(335, context),
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEDF7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: responsiveWidth(15, context),
                                  top: responsiveHeight(15, context),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      fit: BoxFit.cover,
                                      height: responsiveHeight(44, context),
                                      width: responsiveWidth(44, context),
                                      image: AssetImage('assets/pdf.png'),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(10.5, context),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jamet kudasi - CV - UI/UX Designer',
                                            style: TextStyle(
                                              color: Color(0xFF150B3D),
                                              fontFamily: dmsans,
                                              fontSize:
                                                  responsiveWidth(12, context),
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                responsiveHeight(5, context),
                                          ),
                                          Text(
                                            '867 Kb • ${DateTime.now().day} Feb ${DateTime.now().year} at ${DateTime.now().hour}:${DateTime.now().minute}',
                                            style: TextStyle(
                                              color: Color(0xFFAAA6B9),
                                              fontFamily: dmsans,
                                              fontSize:
                                                  responsiveWidth(12, context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(19.36, context),
                            ),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/illustration.png',
                                ),
                                fit: BoxFit.cover,
                                height: responsiveHeight(151.64, context),
                                width: responsiveWidth(152.16, context),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(32, context),
                            ),
                            Center(
                              child: Text(
                                'Information',
                                style: TextStyle(
                                  color: Color(0xFF3A3452),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(16, context),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            Center(
                              child: Text(
                                'Congratulations, your application has been sent',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(40, context),
                            ),
                            Center(
                              child: Container(
                                height: responsiveHeight(50, context),
                                width: responsiveWidth(317, context),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD6CDFE),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    'Find a similar job'.toUpperCase(),
                                    style: TextStyle(
                                      color: Color(0xFF130160),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(14, context),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(20, context),
                            ),
                            Center(
                              child: Container(
                                height: responsiveHeight(50, context),
                                width: responsiveWidth(317, context),
                                decoration: BoxDecoration(
                                  color: Color(0xFF130160),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    'Back To Home'.toUpperCase(),
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
