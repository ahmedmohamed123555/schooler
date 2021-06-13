import 'package:flutter/material.dart';
import 'package:schooler/admin/admin_profile.dart';
import 'package:schooler/custom_widgets/create_drawer_button.dart';
import 'package:schooler/news_content.dart';

class NewsPageAdmin extends StatefulWidget {
  @override
  _NewsPageAdminState createState() => _NewsPageAdminState();
}

class _NewsPageAdminState extends State<NewsPageAdmin> {
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
                  return AdminProfile();
                },
              ));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'icons/admin.png',
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
                          backgroundColor: Colors.blue.shade800,
                          radius: 45.0,
                          backgroundImage:
                              AssetImage('icons/school_admin2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'School Admin',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  )),
              CreateDrawerButton(
                ontap: () {},
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
                ontap: () {},
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
