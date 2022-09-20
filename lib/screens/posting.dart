import 'package:flutter/material.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/company_screen.dart';

class Posting extends StatefulWidget {
  const Posting({Key? key}) : super(key: key);

  @override
  State<Posting> createState() => _PostingState();
}

String show = 'Posting';

class _PostingState extends State<Posting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFF0D0140),
          elevation: 0,
        ),
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWidth(20, context),
                  right: responsiveWidth(20, context),
                  bottom: responsiveHeight(18, context),
                  top: responsiveHeight(5, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = 'Posting';
                      });
                    },
                    child: Container(
                      width: responsiveWidth(162, context),
                      height: responsiveHeight(40, context),
                      decoration: BoxDecoration(
                        color: show == 'Posting'
                            ? Color(0xFF130160)
                            : Color(0xFFD6CDFE),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          'Posting',
                          style: TextStyle(
                            color: show == 'Posting'
                                ? Colors.white
                                : Color(0xFF130160),
                            fontFamily: dmsans,
                            fontWeight: FontWeight.w700,
                            fontSize: responsiveWidth(14, context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = 'My connection';
                      });
                    },
                    child: Container(
                      width: responsiveWidth(162, context),
                      height: responsiveHeight(40, context),
                      decoration: BoxDecoration(
                        color: show == 'My connection'
                            ? Color(0xFF130160)
                            : Color(0xFFD6CDFE),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          'My connection',
                          style: TextStyle(
                            color: show == 'My connection'
                                ? Colors.white
                                : Color(0xFF130160),
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
            ),
            show == 'Posting'
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                          right: responsiveWidth(20, context),
                        ),
                        child: Container(
                          width: responsiveWidth(335, context),
                          height: responsiveHeight(289, context),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: responsiveWidth(20, context),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      horizontalTitleGap:
                                          responsiveWidth(10, context),
                                      leading: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/post_avatar.png'),
                                        radius: responsiveWidth(25, context),
                                      ),
                                      title: Text(
                                        'Arnold Leonardo',
                                        style: TextStyle(
                                          color: Color(0xFF150B3D),
                                          fontFamily: dmsans,
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              responsiveWidth(12, context),
                                        ),
                                      ),
                                      subtitle: Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                          ),
                                          SizedBox(
                                            width: responsiveWidth(9, context),
                                          ),
                                          Text(
                                            '21 minuts ago',
                                            style: TextStyle(
                                              color: Color(0xFFAAA6B9),
                                              fontFamily: dmsans,
                                              fontSize:
                                                  responsiveWidth(10, context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: responsiveHeight(10, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(261, context),
                                      child: Text(
                                        'What are the characteristics of a fake job call form?',
                                        style: TextStyle(
                                          color: Color(0xFF150B3D),
                                          fontFamily: dmsans,
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              responsiveWidth(12, context),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: responsiveHeight(10, context),
                                    ),
                                    Text(
                                      'Because I always find fake job calls so I\'m confused which job to take can you share your knowledge here? thank you',
                                      style: TextStyle(
                                        color: Color(0xFF524B6B),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(12, context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: responsiveHeight(64, context),
                                width: responsiveWidth(335, context),
                                decoration: BoxDecoration(
                                  color: Color(0xFF3F13E4).withOpacity(0.1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: responsiveWidth(28, context),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xFFFF4D46),
                                      size: responsiveWidth(20, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(7, context),
                                    ),
                                    Text(
                                      '12',
                                      style: TextStyle(
                                        color: Color(0xFF6F6B80),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(28, context),
                                    ),
                                    Icon(
                                      Icons.mode_comment_outlined,
                                      color: Color(0xFF6F6B80),
                                      size: responsiveWidth(20, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(7, context),
                                    ),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        color: Color(0xFF6F6B80),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.share,
                                      color: Color(0xFF6F6B80),
                                      size: responsiveWidth(20, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(7, context),
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                        color: Color(0xFF6F6B80),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(31, context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(20, context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: responsiveWidth(20, context),
                          right: responsiveWidth(20, context),
                        ),
                        child: Container(
                          width: responsiveWidth(335, context),
                          height: responsiveHeight(289, context),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: responsiveWidth(20, context),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      horizontalTitleGap:
                                          responsiveWidth(10, context),
                                      leading: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/post_avatar.png'),
                                        radius: responsiveWidth(25, context),
                                      ),
                                      title: Text(
                                        'Monica',
                                        style: TextStyle(
                                          color: Color(0xFF150B3D),
                                          fontFamily: dmsans,
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              responsiveWidth(12, context),
                                        ),
                                      ),
                                      subtitle: Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                          ),
                                          SizedBox(
                                            width: responsiveWidth(9, context),
                                          ),
                                          Text(
                                            '45 minuts ago',
                                            style: TextStyle(
                                              color: Color(0xFFAAA6B9),
                                              fontFamily: dmsans,
                                              fontSize:
                                                  responsiveWidth(10, context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: responsiveHeight(10, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(261, context),
                                      child: Text(
                                        'Experience when moving to a new job',
                                        style: TextStyle(
                                          color: Color(0xFF150B3D),
                                          fontFamily: dmsans,
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              responsiveWidth(12, context),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: responsiveHeight(10, context),
                                    ),
                                    Text(
                                      'Culture shock when moving to a new job is normal. This is not something wrong and I personally experienced it, when I experienced this when I changed jobs in 2 days',
                                      style: TextStyle(
                                        color: Color(0xFF524B6B),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(12, context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: responsiveHeight(64, context),
                                width: responsiveWidth(335, context),
                                decoration: BoxDecoration(
                                  color: Color(0xFF3F13E4).withOpacity(0.1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: responsiveWidth(28, context),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xFFFF4D46),
                                      size: responsiveWidth(20, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(7, context),
                                    ),
                                    Text(
                                      '12',
                                      style: TextStyle(
                                        color: Color(0xFF6F6B80),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(28, context),
                                    ),
                                    Icon(
                                      Icons.mode_comment_outlined,
                                      color: Color(0xFF6F6B80),
                                      size: responsiveWidth(20, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(7, context),
                                    ),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        color: Color(0xFF6F6B80),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.share,
                                      color: Color(0xFF6F6B80),
                                      size: responsiveWidth(20, context),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(7, context),
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                        color: Color(0xFF6F6B80),
                                        fontFamily: dmsans,
                                        fontSize: responsiveWidth(10, context),
                                      ),
                                    ),
                                    SizedBox(
                                      width: responsiveWidth(31, context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(20, context),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CompanyCard(
                            image: 'google',
                            name: 'Google Inc',
                          ),
                          CompanyCard(
                            image: 'apple',
                            name: 'Apple Inc',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CompanyCard(
                            image: 'twitter',
                            name: 'Twitter Inc',
                          ),
                          CompanyCard(
                            image: 'dribble',
                            name: 'Dribble Inc',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CompanyCard(
                            image: 'google',
                            name: 'Google Inc',
                          ),
                          CompanyCard(
                            image: 'apple',
                            name: 'Apple Inc',
                          ),
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: responsiveHeight(15, context),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CompanyPage(
                      position: 'position',
                      company: name,
                      address: '',
                      logo: 'assets/$image.png')));
        },
        child: Container(
          width: responsiveWidth(160, context),
          height: responsiveHeight(191, context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: responsiveHeight(25, context),
              ),
              CircleAvatar(
                radius: responsiveWidth(23, context),
                backgroundColor: Color(0xFFFFE978),
                child: Image(
                  image: AssetImage(
                    'assets/$image.png',
                  ),
                  height: responsiveHeight(28, context),
                  width: responsiveWidth(28, context),
                ),
              ),
              SizedBox(
                height: responsiveHeight(20, context),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xFF0D0140),
                  fontFamily: dmsans,
                  fontWeight: FontWeight.w700,
                  fontSize: responsiveWidth(14, context),
                ),
              ),
              Text(
                '1M Followers',
                style: TextStyle(
                  color: Color(0xFFAAA6B9),
                  fontFamily: dmsans,
                  fontSize: responsiveWidth(12, context),
                ),
              ),
              SizedBox(
                height: responsiveHeight(15, context),
              ),
              Container(
                height: responsiveHeight(30, context),
                width: responsiveWidth(100, context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF7551FF),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: Color(0xFF0D0140),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(12, context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
