import 'package:flutter/material.dart';
import 'package:schooler/child/child_profile.dart';
import '../custom_widgets/create_drawer_button.dart';
import 'package:schooler/news_content.dart';

class NewsPageParent extends StatefulWidget {
  @override
  _NewsPageParentState createState() => _NewsPageParentState();
}

class _NewsPageParentState extends State<NewsPageParent> {
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
                          backgroundImage: AssetImage('images/parent1.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Gamal Magdy',
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
                icon: Icons.attach_money,
                text: 'FEES',
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

// Material(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(60.0),
//                           ),
//                           elevation: 10.0,
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Image.asset(
//                               'images/parent1.jpg',
//                               width: 80.0,
//                               height: 80.0,
//                             ),
//                           ),
//                         ),
