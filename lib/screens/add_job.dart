import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:job_app/screens/home_screen.dart';
import 'package:job_app/screens/main_screen.dart';

class AddJob extends StatefulWidget {
  const AddJob({Key? key}) : super(key: key);

  @override
  State<AddJob> createState() => _AddJobState();
}

String jobPosition = '';
String typeOfWorkspace = '';
bool typeOfWorkspaceEnable = false;
String jobLocation = '';
String company = '';
String employeementType = '';
bool employeementTypeEnable = false;
String description = '';

class _AddJobState extends State<AddJob> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            ListView(
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
                      GestureDetector(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        height: responsiveHeight(40, context),
                      ),
                      Text(
                        'Add a job',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(16, context),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(31, context),
                      ),
                      Container(
                        height: responsiveHeight(85, context),
                        width: responsiveWidth(335, context),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(
                              // top: responsiveHeight(20, context),
                              right: responsiveWidth(20, context),
                              left: responsiveWidth(20, context),
                            ),
                            trailing: jobPosition == ''
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  JobPosition()));
                                    },
                                    child: CircleAvatar(
                                      radius: responsiveWidth(12, context),
                                      backgroundColor:
                                          Color(0xFFFFD6AD).withOpacity(0.2),
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFFFF9228),
                                        size: responsiveWidth(18, context),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  JobPosition()));
                                    },
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xFFFF9228),
                                      size: responsiveWidth(20, context),
                                    ),
                                  ),
                            title: Text(
                              'Job position',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontWeight: FontWeight.w700,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            subtitle: jobPosition != ''
                                ? Text(
                                    jobPosition,
                                    style: TextStyle(
                                      color: Color(0xFF524B6B),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(12, context),
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(10, context),
                      ),
                      Container(
                        height: responsiveHeight(85, context),
                        width: responsiveWidth(335, context),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(
                              // top: responsiveHeight(20, context),
                              right: responsiveWidth(20, context),
                              left: responsiveWidth(20, context),
                            ),
                            trailing: typeOfWorkspace == ''
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        typeOfWorkspaceEnable = true;
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: responsiveWidth(12, context),
                                      backgroundColor:
                                          Color(0xFFFFD6AD).withOpacity(0.2),
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFFFF9228),
                                        size: responsiveWidth(18, context),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        typeOfWorkspaceEnable = true;
                                      });
                                    },
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xFFFF9228),
                                      size: responsiveWidth(20, context),
                                    ),
                                  ),
                            title: Text(
                              'Type of workplace',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontWeight: FontWeight.w700,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            subtitle: typeOfWorkspace != ''
                                ? Text(
                                    typeOfWorkspace,
                                    style: TextStyle(
                                      color: Color(0xFF524B6B),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(12, context),
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(10, context),
                      ),
                      Container(
                        height: responsiveHeight(85, context),
                        width: responsiveWidth(335, context),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(
                              // top: responsiveHeight(20, context),
                              right: responsiveWidth(20, context),
                              left: responsiveWidth(20, context),
                            ),
                            trailing: jobLocation == ''
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Location()));
                                    },
                                    child: CircleAvatar(
                                      radius: responsiveWidth(12, context),
                                      backgroundColor:
                                          Color(0xFFFFD6AD).withOpacity(0.2),
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFFFF9228),
                                        size: responsiveWidth(18, context),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Location()));
                                    },
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xFFFF9228),
                                      size: responsiveWidth(20, context),
                                    ),
                                  ),
                            title: Text(
                              'Job location',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontWeight: FontWeight.w700,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            subtitle: jobLocation != ''
                                ? Text(
                                    jobLocation,
                                    style: TextStyle(
                                      color: Color(0xFF524B6B),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(12, context),
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(10, context),
                      ),
                      Container(
                        height: responsiveHeight(85, context),
                        width: responsiveWidth(335, context),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(
                              // top: responsiveHeight(20, context),
                              right: responsiveWidth(20, context),
                              left: responsiveWidth(20, context),
                            ),
                            trailing: company == ''
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  JobCompany()));
                                    },
                                    child: CircleAvatar(
                                      radius: responsiveWidth(12, context),
                                      backgroundColor:
                                          Color(0xFFFFD6AD).withOpacity(0.2),
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFFFF9228),
                                        size: responsiveWidth(18, context),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  JobCompany()));
                                    },
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xFFFF9228),
                                      size: responsiveWidth(20, context),
                                    ),
                                  ),
                            title: Text(
                              'Company',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontWeight: FontWeight.w700,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            subtitle: company != ''
                                ? Text(
                                    company,
                                    style: TextStyle(
                                      color: Color(0xFF524B6B),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(12, context),
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(10, context),
                      ),
                      Container(
                        height: responsiveHeight(85, context),
                        width: responsiveWidth(335, context),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(
                              // top: responsiveHeight(20, context),
                              right: responsiveWidth(20, context),
                              left: responsiveWidth(20, context),
                            ),
                            trailing: employeementType == ''
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        employeementTypeEnable = true;
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: responsiveWidth(12, context),
                                      backgroundColor:
                                          Color(0xFFFFD6AD).withOpacity(0.2),
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xFFFF9228),
                                        size: responsiveWidth(18, context),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        employeementTypeEnable = true;
                                      });
                                    },
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xFFFF9228),
                                      size: responsiveWidth(20, context),
                                    ),
                                  ),
                            title: Text(
                              'Employment type',
                              style: TextStyle(
                                color: Color(0xFF150B3D),
                                fontFamily: dmsans,
                                fontWeight: FontWeight.w700,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            subtitle: employeementType != ''
                                ? Text(
                                    employeementType,
                                    style: TextStyle(
                                      color: Color(0xFF524B6B),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(12, context),
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(10, context),
                      ),
                      Container(
                        width: responsiveWidth(335, context),
                        height: description == ''
                            ? responsiveHeight(85, context)
                            : null,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.only(
                                  // top: responsiveHeight(20, context),
                                  right: responsiveWidth(20, context),
                                  left: responsiveWidth(20, context),
                                ),
                                trailing: description == ''
                                    ? GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Description()));
                                        },
                                        child: CircleAvatar(
                                          radius: responsiveWidth(12, context),
                                          backgroundColor: Color(0xFFFFD6AD)
                                              .withOpacity(0.2),
                                          child: Icon(
                                            Icons.add,
                                            color: Color(0xFFFF9228),
                                            size: responsiveWidth(18, context),
                                          ),
                                        ),
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Description()));
                                        },
                                        child: Icon(
                                          Icons.edit_outlined,
                                          color: Color(0xFFFF9228),
                                          size: responsiveWidth(20, context),
                                        ),
                                      ),
                                title: Text(
                                  'Description',
                                  style: TextStyle(
                                    color: Color(0xFF150B3D),
                                    fontFamily: dmsans,
                                    fontWeight: FontWeight.w700,
                                    fontSize: responsiveWidth(14, context),
                                  ),
                                ),
                              ),
                              description != ''
                                  ? Divider(
                                      endIndent: responsiveWidth(20, context),
                                      indent: responsiveWidth(20, context),
                                    )
                                  : SizedBox(),
                              description != ''
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                          left: responsiveWidth(20, context)),
                                      child: Text(
                                        description,
                                        style: TextStyle(
                                          color: Color(0xFF524B6B),
                                          fontFamily: dmsans,
                                          fontSize:
                                              responsiveWidth(12, context),
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            typeOfWorkspaceEnable == true
                ? Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              typeOfWorkspaceEnable = false;
                            },
                          );
                        },
                        child: Container(
                          color: Color(0xFF2C373B).withOpacity(
                            0.6,
                          ),
                        ),
                      ),
                      Container(
                        height: responsiveHeight(359, context),
                        width: double.infinity,
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
                              height: responsiveHeight(40, context),
                            ),
                            Text(
                              'Choose the type of workplace',
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
                                'Decide and choose the type of place to work according to what you want',
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
                              height: responsiveHeight(30, context),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  typeOfWorkspace = 'On-site';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'On-site',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                subtitle: Text(
                                  'Employees come to work',
                                  style: TextStyle(
                                    color: Color(0xFFAAA6B9),
                                    fontFamily: dmsans,
                                    fontSize: responsiveWidth(12, context),
                                  ),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: typeOfWorkspace == 'On-site'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: typeOfWorkspace == 'On-site'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  typeOfWorkspace = 'Hybrid';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Hybrid',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                subtitle: Text(
                                  'Employees work directly on site or off site',
                                  style: TextStyle(
                                    color: Color(0xFFAAA6B9),
                                    fontFamily: dmsans,
                                    fontSize: responsiveWidth(12, context),
                                  ),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: typeOfWorkspace == 'Hybrid'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: typeOfWorkspace == 'Hybrid'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  typeOfWorkspace = 'Remote';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Remote',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                subtitle: Text(
                                  'Employees working off site',
                                  style: TextStyle(
                                    color: Color(0xFFAAA6B9),
                                    fontFamily: dmsans,
                                    fontSize: responsiveWidth(12, context),
                                  ),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: typeOfWorkspace == 'Remote'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: typeOfWorkspace == 'Remote'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
            employeementTypeEnable == true
                ? Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              employeementTypeEnable = false;
                            },
                          );
                        },
                        child: Container(
                          color: Color(0xFF2C373B).withOpacity(
                            0.6,
                          ),
                        ),
                      ),
                      Container(
                        height: responsiveHeight(470, context),
                        width: double.infinity,
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
                              height: responsiveHeight(40, context),
                            ),
                            Text(
                              'Choose Job Type',
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
                                'Determine and choose the type of work according to what you want',
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
                              height: responsiveHeight(30, context),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  employeementType = 'Full time';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Full time',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: employeementType == 'Full time'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: employeementType == 'Full time'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  employeementType = 'Part time';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Part time',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: employeementType == 'Part time'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: employeementType == 'Part time'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  employeementType = 'Contract';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Contract',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: employeementType == 'Contract'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: employeementType == 'Contract'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  employeementType = 'Temporary';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Temporary',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: employeementType == 'Temporary'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: employeementType == 'Temporary'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  employeementType = 'Volunteer';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Volunteer',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: employeementType == 'Volunteer'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: employeementType == 'Volunteer'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  employeementType = 'Apprenticeship';
                                });
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: responsiveWidth(38, context),
                                  right: responsiveWidth(38, context),
                                ),
                                dense: true,
                                title: Text(
                                  'Apprenticeship',
                                  style: TextStyle(
                                      color: Color(0xFF150B3D),
                                      fontFamily: dmsans,
                                      fontWeight: FontWeight.w600,
                                      fontSize: responsiveWidth(14, context)),
                                ),
                                trailing: Container(
                                  height: responsiveWidth(18, context),
                                  width: responsiveWidth(18, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color:
                                          employeementType == 'Apprenticeship'
                                              ? Color(0xFFFF9228)
                                              : Color(0xFF524B6B),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: employeementType == 'Apprenticeship'
                                      ? Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Container(
                                            height:
                                                responsiveWidth(12, context),
                                            width: responsiveWidth(12, context),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFF9228),
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class JobPosition extends StatefulWidget {
  const JobPosition({Key? key}) : super(key: key);

  @override
  State<JobPosition> createState() => _JobPositionState();
}

class _JobPositionState extends State<JobPosition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
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
                  GestureDetector(
                    child: Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                  ),
                  Text(
                    'Add a job',
                    style: TextStyle(
                      color: Color(0xFF150B3D),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(16, context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(31, context),
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                    width: responsiveWidth(335, context),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFAAA6B9),
                          size: responsiveWidth(24, context),
                        ),
                        suffixIcon: Icon(
                          Icons.close,
                          color: Color(0xFF150A33),
                          size: responsiveWidth(15, context),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                        hintText: 'Search',
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
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobPosition = 'Assistant';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'Assistant',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobPosition = 'Associate';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'Associate',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobPosition = 'Administrative Assistant';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'Administrative Assistant',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobPosition = 'Account Manager';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'Account Manager',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobPosition = 'Assistant Manager';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'Assistant Manager',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobPosition = 'Commission Sales Associate';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'Commission Sales Associate',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
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

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          shrinkWrap: true,
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
                  GestureDetector(
                    child: Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                  ),
                  Text(
                    'Location',
                    style: TextStyle(
                      color: Color(0xFF150B3D),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(16, context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(31, context),
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                    width: responsiveWidth(335, context),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFAAA6B9),
                          size: responsiveWidth(24, context),
                        ),
                        suffixIcon: Icon(
                          Icons.close,
                          color: Color(0xFF150A33),
                          size: responsiveWidth(15, context),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                        hintText: 'Search',
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
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobLocation = 'United States';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'United States',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobLocation = 'New York';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'New York',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobLocation = 'India';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'India',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobLocation = 'UAE';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'UAE',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobLocation = 'London';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'London',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: responsiveHeight(15, context),
                      bottom: responsiveHeight(15, context),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          jobLocation = 'UK';
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddJob()));
                      },
                      child: Text(
                        'UK',
                        style: TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                    ),
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

class JobCompany extends StatefulWidget {
  const JobCompany({Key? key}) : super(key: key);

  @override
  State<JobCompany> createState() => _JobCompanyState();
}

class _JobCompanyState extends State<JobCompany> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          shrinkWrap: true,
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
                  GestureDetector(
                    child: Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                  ),
                  Text(
                    'Company',
                    style: TextStyle(
                      color: Color(0xFF150B3D),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(16, context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(31, context),
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                    width: responsiveWidth(335, context),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFAAA6B9),
                          size: responsiveWidth(24, context),
                        ),
                        suffixIcon: Icon(
                          Icons.close,
                          color: Color(0xFF150A33),
                          size: responsiveWidth(15, context),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                        hintText: 'Search',
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        company = 'Google';
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddJob()));
                    },
                    child: ListTile(
                      title: Text(
                        'Google',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                      dense: true,
                      subtitle: Text(
                        'Internet',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(10, context),
                        ),
                      ),
                      leading: Image(
                          height: responsiveHeight(30, context),
                          width: responsiveWidth(30, context),
                          image: AssetImage('assets/google.png')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        company = 'Apple';
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddJob()));
                    },
                    child: ListTile(
                      title: Text(
                        'Apple',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                      subtitle: Text(
                        'Electronic goods',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(10, context),
                        ),
                      ),
                      dense: true,
                      leading: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/apple.png',
                        ),
                        width: responsiveWidth(30, context),
                        height: responsiveHeight(30, context),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        company = 'Amazon';
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddJob()));
                    },
                    child: ListTile(
                      title: Text(
                        'Amazon',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                      subtitle: Text(
                        'Internet',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(10, context),
                        ),
                      ),
                      dense: true,
                      leading: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/google.png',
                        ),
                        width: responsiveWidth(30, context),
                        height: responsiveHeight(30, context),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        company = 'Dribbble';
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddJob()));
                    },
                    child: ListTile(
                      title: Text(
                        'Dribbble',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                      subtitle: Text(
                        'Design',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(10, context),
                        ),
                      ),
                      dense: true,
                      leading: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/dribble.png',
                        ),
                        width: responsiveWidth(30, context),
                        height: responsiveHeight(30, context),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        company = 'Twitter';
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddJob()));
                    },
                    child: ListTile(
                      title: Text(
                        'Twitter',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                      subtitle: Text(
                        'Internet',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(10, context),
                        ),
                      ),
                      dense: true,
                      leading: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/twitter.png',
                        ),
                        width: responsiveWidth(30, context),
                        height: responsiveHeight(30, context),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        company = 'Facebook';
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddJob()));
                    },
                    child: ListTile(
                      title: Text(
                        'Facebook',
                        style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(12, context),
                        ),
                      ),
                      subtitle: Text(
                        'Internet',
                        style: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontSize: responsiveWidth(10, context),
                        ),
                      ),
                      dense: true,
                      leading: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/google.png',
                        ),
                        width: responsiveWidth(30, context),
                        height: responsiveHeight(30, context),
                      ),
                    ),
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

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        },
                        child: Text(
                          'Post',
                          style: TextStyle(
                              color: Color(0xFFFF9228),
                              fontFamily: dmsans,
                              fontSize: responsiveWidth(12, context),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(40, context),
                  ),
                  Text(
                    'Shared a Job',
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
                    height: responsiveHeight(298, context),
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
                        hintText: 'About your job',
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
