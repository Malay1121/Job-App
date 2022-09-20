import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/company_screen.dart';
import 'package:job_app/screens/cv_submitted.dart';

var fileAttached = true;

class UploadCV extends StatefulWidget {
  UploadCV({
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
  State<UploadCV> createState() => _UploadCVState();
}

class _UploadCVState extends State<UploadCV> {
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
                        height: responsiveHeight(14, context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upload CV',
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
                              'Add your CV/Resume to apply for a job',
                              style: TextStyle(
                                color: Color(
                                  0xFF524B6B,
                                ),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(10, context),
                            ),
                            fileAttached == false
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        fileAttached = true;
                                      });
                                    },
                                    child: DottedBorder(
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(15),
                                      color: Color(0xFF9D97B5),
                                      dashPattern: [3, 3],
                                      child: SizedBox(
                                        height: responsiveHeight(75, context),
                                        width: responsiveWidth(335, context),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.upload_file_outlined,
                                              color: Color(0xFF524B6B),
                                              size:
                                                  responsiveWidth(20, context),
                                            ),
                                            SizedBox(
                                              width:
                                                  responsiveWidth(15, context),
                                            ),
                                            Text(
                                              'Upload CV/Resume',
                                              style: TextStyle(
                                                color: Color(0xFF0D0140),
                                                fontFamily: dmsans,
                                                fontSize: responsiveWidth(
                                                    12, context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: responsiveHeight(118, context),
                                    width: responsiveWidth(335, context),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFEDF7),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: DottedBorder(
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(15),
                                      color: Color(0xFF9D97B5),
                                      dashPattern: [3, 3],
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: responsiveWidth(15, context),
                                          top: responsiveHeight(15, context),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                  fit: BoxFit.cover,
                                                  height: responsiveHeight(
                                                      44, context),
                                                  width: responsiveWidth(
                                                      44, context),
                                                  image: AssetImage(
                                                      'assets/pdf.png'),
                                                ),
                                                SizedBox(
                                                  width: responsiveWidth(
                                                      10.5, context),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Jamet kudasi - CV - UI/UX Designer',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF150B3D),
                                                          fontFamily: dmsans,
                                                          fontSize:
                                                              responsiveWidth(
                                                                  12, context),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            responsiveHeight(
                                                                5, context),
                                                      ),
                                                      Text(
                                                        '867 Kb • ${DateTime.now().day} Feb ${DateTime.now().year} at ${DateTime.now().hour}:${DateTime.now().minute}',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFAAA6B9),
                                                          fontFamily: dmsans,
                                                          fontSize:
                                                              responsiveWidth(
                                                                  12, context),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height:
                                                  responsiveHeight(20, context),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  fileAttached = false;
                                                });
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.delete_outline,
                                                    color: Color(0xFFFC4646),
                                                    size: responsiveWidth(
                                                        20, context),
                                                  ),
                                                  SizedBox(
                                                    width: responsiveWidth(
                                                        10, context),
                                                  ),
                                                  Text(
                                                    'Remove file',
                                                    style: TextStyle(
                                                      color: Color(0xFFFC4646),
                                                      fontFamily: dmsans,
                                                      fontSize: responsiveWidth(
                                                          12, context),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                            SizedBox(
                              height: responsiveHeight(25, context),
                            ),
                            Text(
                              'Information',
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
                            Container(
                              height: responsiveHeight(232, context),
                              width: responsiveWidth(335, context),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 62,
                                    offset: Offset(0, 4),
                                    color: Color(0xFF99ABC6).withOpacity(0.18),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: responsiveWidth(20, context),
                                    top: responsiveHeight(20, context)),
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: (responsiveHeight(232, context) /
                                          responsiveHeight(14, context))
                                      .toInt(),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText:
                                        'Explain why you are the right person for this job',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFAAA6B9),
                                      fontFamily: dmsans,
                                      fontSize: responsiveHeight(14, context),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Color(0xFFAAA6B9),
                                    fontFamily: dmsans,
                                    fontSize: responsiveHeight(14, context),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(25, context),
                            ),
                            SizedBox(
                              height: responsiveHeight(16, context),
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CVSubmitted(
                                        position: widget.position,
                                        company: widget.company,
                                        address: widget.address,
                                        logo: widget.logo,
                                        tag1: widget.tag1,
                                        tag2: widget.tag2,
                                        tag3: widget.tag3,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: responsiveHeight(50, context),
                                  width: responsiveWidth(317, context),
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
