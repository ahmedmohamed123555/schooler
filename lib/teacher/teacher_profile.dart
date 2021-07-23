import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_big_icon.dart';
import 'package:schooler/parent/parent_trips.dart';
import 'package:schooler/parent/Parent_activities.dart';
import 'package:schooler/teacher/teacher_my_classes.dart';
import 'package:schooler/teacher/teacher_schedule.dart';
import 'teacher_calendar.dart';

class TeacherProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Space'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.red.shade400,
                  icon: AssetImage(
                    'icons/calendar.png',
                  ),
                  iconName: 'Calendar',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TeacherCalendar()));
                  },
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/schedule.png',
                  ),
                  iconName: 'Schedule',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TeacherSchedule()));
                  },
                ),
              ),
            ],
          ),
          Row(children: [
            Expanded(
              child: CustomBigIcon(
                colora: Colors.teal,
                icon: AssetImage(
                  'icons/trips.png',
                ),
                iconName: 'Trips',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentTrips(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: CustomBigIcon(
                colora: Colors.blue.shade800,
                icon: AssetImage(
                  'icons/activities.png',
                ),
                iconName: 'Activities',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentActivities(),
                    ),
                  );
                },
              ),
            ),
          ]),
          Row(
            children: [
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.teal,
                  icon: AssetImage(
                    'icons/my_classes.png',
                  ),
                  iconName: 'My Classes',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TeacherMyClasses(),
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
