import 'package:flutter/material.dart';
import 'package:schooler/child/child_profile.dart';
import 'package:schooler/parent/parent_child_info.dart';
import '../custom_widgets/create_drawer_button.dart';
import 'package:schooler/news_content.dart';

class StudentStartPage extends StatefulWidget {
  @override
  _StudentStartPageState createState() => _StudentStartPageState();
}

class _StudentStartPageState extends State<StudentStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            size: 30.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ChildProfile();
                },
              ));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/childface.png',
              ),
              radius: 25.0,
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
                          backgroundImage: AssetImage('images/child1.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Adam Gamal',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentChildInfo(),
                    ),
                  );
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
