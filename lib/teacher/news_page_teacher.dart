import 'package:flutter/material.dart';
import 'package:schooler/teacher/teacher_profile.dart';
import 'package:schooler/custom_widgets/create_drawer_button.dart';
import 'package:schooler/news_content.dart';
import 'teacher_info.dart';

class NewsPageTeacher extends StatefulWidget {
  @override
  _NewsPageTeacherState createState() => _NewsPageTeacherState();
}

class _NewsPageTeacherState extends State<NewsPageTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return TeacherProfile();
                },
              ));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'icons/work_space.png',
              ),
              radius: 23.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
        title: Text(
          'News',
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF263238),
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF3B464B),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 45.0,
                          backgroundImage: AssetImage('images/teacher1.jpeg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Samy Radwan',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  )),
              CreateDrawerButton(
                ontap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TeacherInfo()));
                },
                icon: Icons.account_circle,
                text: 'PROFILE',
              ),
              CreateDrawerButton(
                ontap: () {},
                icon: Icons.chat,
                text: 'CHAT',
              ),
              CreateDrawerButton(
                ontap: () {},
                icon: Icons.help,
                text: 'HELP',
              ),
              CreateDrawerButton(
                ontap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                icon: Icons.logout,
                text: 'LOGOUT',
              ),
            ],
          ),
        ),
      ),
      body: NewsContent(),
    );
  }
}
