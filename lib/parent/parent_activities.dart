import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_biger_icon.dart';
import 'package:schooler/login_page.dart';
import 'package:schooler/teacher/teacher_activity_football.dart';
import 'parent_activity_details.dart';

class ParentActivities extends StatelessWidget {
  LoginPage loginPage = LoginPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.green.shade900,
                      iconName: 'Football',
                      icon: AssetImage(
                        'icons/football.png',
                      ),
                      onTap: () {
                        if (loginPage.pageState.getChosenAccount() ==
                            'Parent') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ParentActivityDetails()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TeacherActivityFootball()));
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.blue.shade400,
                      iconName: 'Swimming',
                      icon: AssetImage(
                        'icons/swimming.png',
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.orange.shade800,
                      iconName: 'Basketball',
                      icon: AssetImage(
                        'icons/basketball.png',
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.brown,
                      iconName: 'Tennis',
                      icon: AssetImage(
                        'icons/tennis.png',
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.blue.shade900,
                      iconName: 'Cycling',
                      icon: AssetImage(
                        'icons/cycling.png',
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.orange.shade300,
                      iconName: 'Running',
                      icon: AssetImage(
                        'icons/running.png',
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
