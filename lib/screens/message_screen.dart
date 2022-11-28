import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_app/constants.dart';
import 'package:job_app/responsive.dart';
import 'package:job_app/screens/personal_chat.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

bool message = false;

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return message == false
        ? Center(
            child: Column(
              children: [
                SizedBox(
                  height: responsiveHeight(100, context),
                ),
                Image(
                  image: AssetImage('assets/no_message.png'),
                  height: responsiveHeight(239, context),
                  width: responsiveWidth(243, context),
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: responsiveHeight(42, context),
                ),
                Text(
                  'No Message',
                  style: TextStyle(
                    color: Color(0xFF150B3D),
                    fontFamily: dmsans,
                    fontWeight: FontWeight.w700,
                    fontSize: responsiveWidth(16, context),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(21, context),
                ),
                SizedBox(
                  width: responsiveWidth(240, context),
                  child: Text(
                    'You currently have no incoming messages thank you',
                    style: TextStyle(
                      color: Color(0xFF524B6B),
                      fontFamily: dmsans,
                      fontSize: responsiveWidth(12, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(42, context),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      message = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF130160),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 62,
                          offset: Offset(0, 4),
                          color: Color(0xFF99ABC62E).withOpacity(0.1),
                        ),
                      ],
                    ),
                    width: responsiveWidth(213, context),
                    height: responsiveHeight(50, context),
                    child: Center(
                      child: Text(
                        'Create a message'.toUpperCase(),
                        style: TextStyle(
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
        : message == true
            ? Scaffold(
                backgroundColor: backgroundColor,
                appBar: AppBar(
                  actions: [
                    Icon(
                      FontAwesomeIcons.penToSquare,
                      color: Color(0xFFFF9228),
                      size: responsiveWidth(20, context),
                    ),
                    SizedBox(
                      width: responsiveWidth(15, context),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Color(0xFF5B5858),
                      size: responsiveWidth(24, context),
                    ),
                    SizedBox(
                      width: responsiveWidth(10, context),
                    ),
                  ],
                  centerTitle: true,
                  title: Text(
                    'Messages',
                    style: TextStyle(
                        fontFamily: dmsans,
                        fontWeight: FontWeight.w700,
                        fontSize: responsiveWidth(20, context),
                        color: Colors.black),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                body: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: responsiveWidth(20, context),
                        right: responsiveWidth(20, context),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: responsiveHeight(50, context),
                            width: responsiveWidth(335, context),
                            child: TextField(
                              cursorColor: Color(
                                0xFFAAA6B9,
                              ),
                              style: TextStyle(
                                color: Color(
                                  0xFFAAA6B9,
                                ),
                                fontFamily: dmsans,
                                fontSize: responsiveWidth(12, context),
                              ),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                  color: Color(
                                    0xFFAAA6B9,
                                  ),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFFAAA6B9),
                                  size: responsiveWidth(24, context),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                hintText: 'Search message',
                                hintStyle: TextStyle(
                                  color: Color(
                                    0xFFAAA6B9,
                                  ),
                                  fontFamily: dmsans,
                                  fontSize: responsiveWidth(12, context),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: responsiveHeight(5, context),
                          ),
                          MessageTiles(
                            name: 'Andy Robertson',
                            lastMessage: 'Oh yes, please send your CV/Res...',
                            newMessages: 2,
                            time: '5m ago',
                            avatar:
                                'https://www.stepstherapy.com.au/wp-content/uploads/2018/10/Yazmin-profile-picture-square.jpg',
                          ),
                          MessageTiles(
                            name: 'Giorgio Chiellini',
                            lastMessage: 'Hello sir, Good Morning',
                            time: '30m ago',
                            avatar:
                                'https://sunrift.com/wp-content/uploads/2014/12/Blake-profile-photo-square.jpg',
                          ),
                          MessageTiles(
                            name: 'Alex Morgan',
                            lastMessage: 'I saw the UI/UX Designer vac...',
                            time: '09:30 am',
                            avatar:
                                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw3NjA4Mjc3NHx8ZW58MHx8fHw%3D&w=1000&q=80',
                          ),
                          MessageTiles(
                            name: 'Megan Rapinoe',
                            lastMessage: 'I saw the UI/UX Designer vac...',
                            time: '01:00 pm',
                            avatar:
                                'https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg',
                          ),
                          MessageTiles(
                            name: 'Alessandro Bastoni',
                            lastMessage: 'I saw the UI/UX Designer vac...',
                            time: '06:00 pm',
                            avatar:
                                'https://cms-assets.tutsplus.com/uploads/users/810/profiles/19338/profileImage/profile-square-extra-small.png',
                          ),
                          MessageTiles(
                            name: 'Ilkay Gundogan',
                            lastMessage: 'I saw the UI/UX Designer vac...',
                            avatar:
                                'https://elireview.com/wp-content/uploads/2016/12/reed-profile-square.jpg',
                            time: 'Yesterday',
                          ),
                          SizedBox(
                            height: responsiveHeight(20, context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox();
  }
}

class MessageTiles extends StatelessWidget {
  const MessageTiles({
    Key? key,
    required this.name,
    required this.lastMessage,
    this.newMessages = 0,
    required this.time,
    required this.avatar,
  }) : super(key: key);

  final String name;
  final String lastMessage;
  final int newMessages;
  final String time;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: responsiveHeight(30, context),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PersonalChat(
                        image: avatar,
                        name: name,
                      )));
        },
        child: Row(
          children: [
            CircleAvatar(
              radius: responsiveWidth(25, context),
              backgroundImage: NetworkImage(avatar),
            ),
            SizedBox(
              width: responsiveText(15, context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xFF150B3D),
                    fontFamily: dmsans,
                    fontWeight: FontWeight.w700,
                    fontSize: responsiveText(14, context),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(6, context),
                ),
                Text(
                  lastMessage,
                  style: newMessages != 0
                      ? TextStyle(
                          color: Color(0xFF524B6B),
                          fontFamily: dmsans,
                          fontWeight: FontWeight.w700,
                          fontSize: responsiveText(12, context),
                        )
                      : TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontFamily: dmsans,
                          fontWeight: FontWeight.w400,
                          fontSize: responsiveText(12, context),
                        ),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(
                    color: Color(0xFFAAA6B9),
                    fontFamily: dmsans,
                    fontSize: responsiveText(12, context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(9, context),
                ),
                newMessages == 0
                    ? SizedBox()
                    : Container(
                        height: responsiveText(14, context),
                        width: responsiveText(14, context),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF9228),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            newMessages.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: dmsans,
                              fontWeight: FontWeight.w600,
                              fontSize: responsiveText(9, context),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
