import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/search.dart';

class CompanyPage extends StatefulWidget {
  CompanyPage({
    required this.position,
    required this.company,
    required this.address,
    required this.logo,
  });

  final String logo;
  final String position;
  final String company;
  final String address;

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

String content = 'About us';

class _CompanyPageState extends State<CompanyPage> {
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
          body: Column(
            children: [
              Expanded(
                child: ListView(
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
                              height: responsiveHeight(140, context),
                              width: double.infinity,
                              color: Color(0xFFF3F2F2),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: responsiveHeight(35, context),
                                  ),
                                  Text(
                                    widget.company,
                                    style: TextStyle(
                                      color: Color(0xFF0D0140),
                                      fontFamily: dmsans,
                                      fontSize: responsiveWidth(16, context),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: responsiveHeight(15, context),
                                  ),
                                  Container(
                                    height: responsiveHeight(50, context),
                                    width: responsiveWidth(335, context),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              content = 'About us';
                                            });
                                          },
                                          child: Container(
                                            height:
                                                responsiveHeight(40, context),
                                            width:
                                                responsiveWidth(108.3, context),
                                            decoration: BoxDecoration(
                                              color: content == 'About us'
                                                  ? Color(0xFFFCA34D)
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'About us',
                                                style: TextStyle(
                                                  color: content == 'About us'
                                                      ? Colors.white
                                                      : Color(0xFF150B3D),
                                                  fontFamily: dmsans,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: responsiveWidth(
                                                      14, context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              content = 'Post';
                                            });
                                          },
                                          child: Container(
                                            height:
                                                responsiveHeight(40, context),
                                            width:
                                                responsiveWidth(108.3, context),
                                            decoration: BoxDecoration(
                                              color: content == 'Post'
                                                  ? Color(0xFFFCA34D)
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Post',
                                                style: TextStyle(
                                                  color: content == 'Post'
                                                      ? Colors.white
                                                      : Color(0xFF150B3D),
                                                  fontFamily: dmsans,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: responsiveWidth(
                                                      14, context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              content = 'Jobs';
                                            });
                                          },
                                          child: Container(
                                            height:
                                                responsiveHeight(40, context),
                                            width:
                                                responsiveWidth(108.3, context),
                                            decoration: BoxDecoration(
                                              color: content == 'Jobs'
                                                  ? Color(0xFFFCA34D)
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Jobs',
                                                style: TextStyle(
                                                  color: content == 'Jobs'
                                                      ? Colors.white
                                                      : Color(0xFF150B3D),
                                                  fontFamily: dmsans,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: responsiveWidth(
                                                      14, context),
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
                            SizedBox(
                              height: responsiveHeight(24, context),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: responsiveWidth(20, context),
                              ),
                              child: content == 'About us'
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'About Company',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(80, context),
                                          child: Text(
                                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas . Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.',
                                            maxLines: 5,
                                            style: TextStyle(
                                              color: Color(
                                                0xFF524B6B,
                                              ),
                                              fontFamily: dmsans,
                                              fontSize:
                                                  responsiveWidth(12, context),
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
                                            color: Color(0xFF7551FF)
                                                .withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Read more',
                                              style: TextStyle(
                                                color: Color(0xFF0D0140),
                                                fontFamily: dmsans,
                                                fontSize: responsiveWidth(
                                                    12, context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(25, context),
                                        ),
                                        Text(
                                          'Website',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        Text(
                                          'https://www.website.com',
                                          style: TextStyle(
                                            color: Color(0xFF7551FF),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Industry',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        Text(
                                          'Internet product',
                                          style: TextStyle(
                                            color: Color(0xFF524B6B),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Employee size',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        Text(
                                          '132,121 Employees',
                                          style: TextStyle(
                                            color: Color(0xFF524B6B),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Head office',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        Text(
                                          'Mountain View, California, Amerika Serikat',
                                          style: TextStyle(
                                            color: Color(0xFF524B6B),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Type',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        Text(
                                          'Multinational company',
                                          style: TextStyle(
                                            color: Color(0xFF524B6B),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
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
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Since',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        Text(
                                          '1998',
                                          style: TextStyle(
                                            color: Color(0xFF524B6B),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(12, context),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(20, context),
                                        ),
                                        Text(
                                          'Specialization',
                                          style: TextStyle(
                                            color: Color(0xFF150B3D),
                                            fontFamily: dmsans,
                                            fontSize:
                                                responsiveWidth(14, context),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(16, context),
                                        ),
                                        SizedBox(
                                          width: responsiveWidth(279, context),
                                          child: Text(
                                            'Search technology, Web computing, Software and Online advertising',
                                            style: TextStyle(
                                              color: Color(0xFF524B6B),
                                              fontFamily: dmsans,
                                              fontSize:
                                                  responsiveWidth(12, context),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: responsiveHeight(10, context),
                                        ),
                                      ],
                                    )
                                  : content == 'Post'
                                      ? Column(
                                          children: [
                                            Container(
                                              width:
                                                  responsiveWidth(335, context),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: responsiveWidth(
                                                          20, context),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ListTile(
                                                          contentPadding:
                                                              EdgeInsets.zero,
                                                          horizontalTitleGap:
                                                              responsiveWidth(
                                                                  10, context),
                                                          leading: CircleAvatar(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            child: Image(
                                                              fit: BoxFit
                                                                  .fitHeight,
                                                              height:
                                                                  responsiveHeight(
                                                                      50,
                                                                      context),
                                                              width:
                                                                  responsiveWidth(
                                                                      50,
                                                                      context),
                                                              image: AssetImage(
                                                                widget.logo,
                                                              ),
                                                            ),
                                                            radius:
                                                                responsiveWidth(
                                                                    25,
                                                                    context),
                                                          ),
                                                          title: Text(
                                                            widget.company,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF150B3D),
                                                              fontFamily:
                                                                  dmsans,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize:
                                                                  responsiveWidth(
                                                                      12,
                                                                      context),
                                                            ),
                                                          ),
                                                          subtitle: Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .watch_later_outlined,
                                                              ),
                                                              SizedBox(
                                                                width:
                                                                    responsiveWidth(
                                                                        9,
                                                                        context),
                                                              ),
                                                              Text(
                                                                '45 minutes ago',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFAAA6B9),
                                                                  fontFamily:
                                                                      dmsans,
                                                                  fontSize:
                                                                      responsiveWidth(
                                                                          10,
                                                                          context),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              responsiveHeight(
                                                                  10, context),
                                                        ),
                                                        Text(
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF524B6B),
                                                            fontFamily: dmsans,
                                                            fontSize:
                                                                responsiveWidth(
                                                                    12,
                                                                    context),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              responsiveHeight(
                                                                  15, context),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assets/office_image.png'),
                                                            height:
                                                                responsiveHeight(
                                                                    166,
                                                                    context),
                                                            width:
                                                                responsiveWidth(
                                                                    314,
                                                                    context),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              responsiveHeight(
                                                                  18, context),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                                  261, context),
                                                          child: Text(
                                                            'What\'s it like to work at Google?',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF150B3D),
                                                              fontFamily:
                                                                  dmsans,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize:
                                                                  responsiveWidth(
                                                                      12,
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Youtube.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF150B3D),
                                                            fontFamily: dmsans,
                                                            fontSize:
                                                                responsiveWidth(
                                                                    10,
                                                                    context),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              responsiveHeight(
                                                                  14, context),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: responsiveHeight(
                                                        64, context),
                                                    width: responsiveWidth(
                                                        335, context),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF3F13E4)
                                                          .withOpacity(0.1),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(20),
                                                        bottomRight:
                                                            Radius.circular(20),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                                  28, context),
                                                        ),
                                                        Icon(
                                                          Icons.favorite,
                                                          color:
                                                              Color(0xFFFF4D46),
                                                          size: responsiveWidth(
                                                              20, context),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                                  7, context),
                                                        ),
                                                        Text(
                                                          '12',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF6F6B80),
                                                            fontFamily: dmsans,
                                                            fontSize:
                                                                responsiveWidth(
                                                                    10,
                                                                    context),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                                  28, context),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .mode_comment_outlined,
                                                          color:
                                                              Color(0xFF6F6B80),
                                                          size: responsiveWidth(
                                                              20, context),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                                  7, context),
                                                        ),
                                                        Text(
                                                          '10',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF6F6B80),
                                                            fontFamily: dmsans,
                                                            fontSize:
                                                                responsiveWidth(
                                                                    10,
                                                                    context),
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Icon(
                                                          Icons.share,
                                                          color:
                                                              Color(0xFF6F6B80),
                                                          size: responsiveWidth(
                                                              20, context),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                                  7, context),
                                                        ),
                                                        Text(
                                                          '2',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF6F6B80),
                                                            fontFamily: dmsans,
                                                            fontSize:
                                                                responsiveWidth(
                                                                    10,
                                                                    context),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              responsiveWidth(
                                                            31,
                                                            context,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height:
                                                  responsiveHeight(10, context),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            JobCard(
                                              mediaQuery:
                                                  MediaQuery.of(context).size,
                                              position: widget.position,
                                              company: widget.company,
                                              address: widget.address,
                                              tag1: 'Design',
                                              tag2: 'Full time',
                                              tag3: 'Senior designer',
                                              postedTime: '25 minute ago',
                                              salary: '15K',
                                              logo: widget.logo,
                                            ),
                                          ],
                                        ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: responsiveWidth(42, context),
                          backgroundColor: Color(0xFFAFECFE),
                          child: Image(
                            fit: BoxFit.contain,
                            height: responsiveWidth(54.6, context),
                            width: responsiveWidth(54.6, context),
                            image: AssetImage(widget.logo),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 78,
                width: MediaQuery.of(context).size.width - 1,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: responsiveHeight(50, context),
                      width: responsiveWidth(50, context),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 72),
                            blurRadius: 72,
                            color: Color(0xFFACC8D366).withOpacity(0.4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Icon(Icons.bookmark_outline),
                      ),
                    ),
                    Container(
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
