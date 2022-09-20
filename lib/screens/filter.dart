import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/no_result.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

var category = 'Designer';
var subcategory = 'UI/UX Design';
var salaryRange = SfRangeValues(0.0, 5.0);

bool fullTime = false;
bool partTime = false;
bool internship = false;

String lastUpdate = '';
String workplace = '';
String position = '';
String experience = '';
String specialization = '';

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Color(0xFF524B6B),
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: dmsans,
                        fontWeight: FontWeight.w700,
                        fontSize: responsiveWidth(20, context),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: responsiveWidth(20, context),
                      top: responsiveHeight(48, context),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(27, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          height: responsiveHeight(50, context),
                          width: responsiveWidth(331, context),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: responsiveWidth(33, context)),
                            child: DropdownButton<String>(
                              value: category,
                              icon: const Icon(
                                Icons.arrow_downward,
                                size: 0,
                              ),
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  category = newValue!;
                                });
                              },
                              items: <String>[
                                'Designer',
                                'Marketing',
                                'Programmer',
                                'CA'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(31, context),
                        ),
                        Text(
                          'Sub-Category',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(27, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          height: responsiveHeight(50, context),
                          width: responsiveWidth(331, context),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: responsiveWidth(33, context)),
                            child: DropdownButton<String>(
                              value: subcategory,
                              icon: const Icon(
                                Icons.arrow_downward,
                                size: 0,
                              ),
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  subcategory = newValue!;
                                });
                              },
                              items: <String>[
                                'UI/UX Design',
                                'Embroidery Design',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(31, context),
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(27, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          height: responsiveHeight(50, context),
                          width: responsiveWidth(331, context),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: responsiveWidth(33, context)),
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                                hintText: 'California',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(31, context),
                        ),
                        Text(
                          'Salary',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(18, context),
                        ),
                        Row(
                          children: [
                            Text(
                              'Minimum Salary',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Maximum Salary',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(14, context),
                              ),
                            ),
                            SizedBox(
                              width: responsiveWidth(21, context),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 50,
                          child: SfRangeSlider(
                            values: salaryRange,
                            min: 0.0,
                            max: 100000.0,
                            enableTooltip: true,
                            onChanged: (newVal) {
                              setState(() {
                                salaryRange = newVal;
                              });
                            },
                            activeColor: Color(0xFFFF9228),
                            inactiveColor: Color(0xFFCCC4C2),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(15, context),
                        ),
                        Text(
                          'Job Type',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(17, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: responsiveWidth(20, context),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (fullTime == true) {
                                      fullTime = false;
                                    } else if (fullTime == false) {
                                      fullTime = true;
                                    }
                                  });
                                },
                                child: Container(
                                  height: responsiveHeight(28, context),
                                  width: responsiveWidth(107, context),
                                  decoration: BoxDecoration(
                                    color: fullTime == true
                                        ? Color(0xFFFFD6AD)
                                        : Color(0xFFFFD6AD).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Full time',
                                      style: TextStyle(
                                        color: Color(0xFF524B6B),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (partTime == true) {
                                      partTime = false;
                                    } else if (partTime == false) {
                                      partTime = true;
                                    }
                                  });
                                },
                                child: Container(
                                  height: responsiveHeight(28, context),
                                  width: responsiveWidth(107, context),
                                  decoration: BoxDecoration(
                                    color: partTime == true
                                        ? Color(0xFFFFD6AD)
                                        : Color(0xFFFFD6AD).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Part time',
                                      style: TextStyle(
                                        color: Color(0xFF524B6B),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (internship == true) {
                                      internship = false;
                                    } else if (internship == false) {
                                      internship = true;
                                    }
                                  });
                                },
                                child: Container(
                                  height: responsiveHeight(28, context),
                                  width: responsiveWidth(107, context),
                                  decoration: BoxDecoration(
                                    color: internship == true
                                        ? Color(0xFFFFD6AD)
                                        : Color(0xFFFFD6AD).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Internship',
                                      style: TextStyle(
                                        color: Color(0xFF524B6B),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(16, context),
                        ),
                        Text(
                          'Last update',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              lastUpdate = 'recent';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: lastUpdate == 'recent'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: lastUpdate == 'recent'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Recent',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              lastUpdate = 'last-week';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: lastUpdate == 'last-week'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: lastUpdate == 'last-week'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Last week',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              lastUpdate = 'last-month';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: lastUpdate == 'last-month'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: lastUpdate == 'last-month'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Last month',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              lastUpdate = 'any-time';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: lastUpdate == 'any-time'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: lastUpdate == 'any-time'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Any time',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(30, context),
                        ),
                        Text(
                          'Type of workplace',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              workplace = 'On-site';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: workplace == 'On-site'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: workplace == 'On-site'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'On-site',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              workplace = 'Hybrid';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: workplace == 'Hybrid'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: workplace == 'Hybrid'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Hybrid',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              workplace = 'Remote';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: workplace == 'Remote'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: workplace == 'Remote'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Remote',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(31, context),
                        ),
                        Text(
                          'Position level',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: responsiveWidth(20, context),
                          ),
                          child: Wrap(
                            spacing: responsiveWidth(15, context),
                            runSpacing: responsiveHeight(15, context),
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (position == 'Junior') {
                                      position == '';
                                    } else {
                                      position = 'Junior';
                                    }
                                  });
                                },
                                child: Container(
                                  width: responsiveWidth(77, context),
                                  height: responsiveHeight(36, context),
                                  decoration: BoxDecoration(
                                    color: position == 'Junior'
                                        ? Color(0xFFFCA34D)
                                        : Color(
                                            0xFFCBC9D4,
                                          ).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Junior',
                                      style: TextStyle(
                                        color: Color(
                                          position == 'Junior'
                                              ? 0xFFFFFFFF
                                              : 0xFF524B6B,
                                        ),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(12, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (position == 'Senior') {
                                      position == '';
                                    } else {
                                      position = 'Senior';
                                    }
                                  });
                                },
                                child: Container(
                                  width: responsiveWidth(77, context),
                                  height: responsiveHeight(36, context),
                                  decoration: BoxDecoration(
                                    color: position == 'Senior'
                                        ? Color(0xFFFCA34D)
                                        : Color(
                                            0xFFCBC9D4,
                                          ).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Senior',
                                      style: TextStyle(
                                        color: Color(
                                          position == 'Senior'
                                              ? 0xFFFFFFFF
                                              : 0xFF524B6B,
                                        ),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(12, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (position == 'Leader') {
                                      position == '';
                                    } else {
                                      position = 'Leader';
                                    }
                                  });
                                },
                                child: Container(
                                  width: responsiveWidth(77, context),
                                  height: responsiveHeight(36, context),
                                  decoration: BoxDecoration(
                                    color: position == 'Leader'
                                        ? Color(0xFFFCA34D)
                                        : Color(
                                            0xFFCBC9D4,
                                          ).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Leader',
                                      style: TextStyle(
                                        color: Color(
                                          position == 'Leader'
                                              ? 0xFFFFFFFF
                                              : 0xFF524B6B,
                                        ),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(12, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (position == 'Manager') {
                                      position == '';
                                    } else {
                                      position = 'Manager';
                                    }
                                  });
                                },
                                child: Container(
                                  width: responsiveWidth(77, context),
                                  height: responsiveHeight(36, context),
                                  decoration: BoxDecoration(
                                    color: position == 'Manager'
                                        ? Color(0xFFFCA34D)
                                        : Color(
                                            0xFFCBC9D4,
                                          ).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Manager',
                                      style: TextStyle(
                                        color: Color(
                                          position == 'Manager'
                                              ? 0xFFFFFFFF
                                              : 0xFF524B6B,
                                        ),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(12, context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        Text(
                          'Experience',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              experience = 'No experience';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: experience == 'No experience'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: experience == 'No experience'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'No experience',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              experience = 'Less than a year';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: experience == 'Less than a year'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: experience == 'Less than a year'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Less than a year',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              experience = '1-3 years';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: experience == '1-3 years'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: experience == '1-3 years'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                '1-3 years',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              experience = '3-5 years';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: experience == '3-5 years'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: experience == '3-5 years'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                '3-5 years',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              experience = '5-10 years';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: experience == '5-10 years'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: experience == '5-10 years'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                '5-10 years',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              experience = 'More than 10 years';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: experience == 'More than 10 years'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: experience == 'More than 10 years'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'More than 10 years',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        Text(
                          'Specialization',
                          style: TextStyle(
                            color: Color(0xFF150B3D),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w600,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(23, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              specialization = 'Design';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: specialization == 'Design'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: specialization == 'Design'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Design',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              specialization = 'Finance';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: specialization == 'Finance'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: specialization == 'Finance'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Finance',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              specialization = 'Education';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: specialization == 'Education'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: specialization == 'Education'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Education',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              specialization = 'Health';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: specialization == 'Health'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: specialization == 'Health'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Health',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              specialization = 'Restuarant';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: specialization == 'Restuarant'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: specialization == 'Restuarant'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Restuarant',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              specialization = 'Programmer';
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: responsiveWidth(18, context),
                                width: responsiveWidth(18, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: specialization == 'Programmer'
                                          ? Color(0xFFFF9228)
                                          : Color(0xFF524B6B),
                                      width: 1.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      responsiveWidth(3, context)),
                                  child: specialization == 'Programmer'
                                      ? Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xFFFF9228)),
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        )
                                      : SizedBox(
                                          height: responsiveWidth(12, context),
                                          width: responsiveWidth(12, context),
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: responsiveWidth(15, context),
                              ),
                              Text(
                                'Programmer',
                                style: TextStyle(
                                  color: Color(0xFF524B6B),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(35, context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(172, 200, 211, 0.2),
                    blurRadius: 83,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              height: responsiveHeight(78, context),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Container(
                      height: responsiveHeight(50, context),
                      width: responsiveWidth(75, context),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 72,
                            offset: Offset(
                              0,
                              20,
                            ),
                            color: Color.fromRGBO(172, 200, 211, 0.4),
                          ),
                        ],
                      ),
                      child: Center(child: Text('Reset')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoResult(),
                        ),
                      );
                    },
                    child: Container(
                      height: responsiveHeight(50, context),
                      width: responsiveWidth(245, context),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
