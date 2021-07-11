import 'package:flutter/material.dart';
import 'package:schooler/child/child_attendance.dart';
import 'package:schooler/child/child_coursework.dart';
import 'package:schooler/child/child_teacher_list.dart';
import 'package:schooler/custom_widgets/custom_big_icon.dart';
import 'child_attendance.dart';
import 'package:schooler/parent/parent_subscriptions.dart';
import 'child_class_list.dart';
import 'child_teacher_list.dart';
import 'child_coursework.dart';

class ChildProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Child Profile'),
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
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/schedule.png',
                  ),
                  iconName: 'Schedule',
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.teal,
                  icon: AssetImage(
                    'icons/attendance.png',
                  ),
                  iconName: 'Attendance',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChildAttendans(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.red.shade400,
                  icon: AssetImage(
                    'icons/course_work.png',
                  ),
                  iconName: 'CourseWork',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChildCourseWork(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/subscribe.png',
                  ),
                  iconName: 'Subscriptions',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ParentSubscriptions(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.teal,
                  icon: AssetImage(
                    'icons/dashboard.png',
                  ),
                  iconName: 'Dashboard',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.red.shade400,
                  icon: AssetImage(
                    'icons/teacher_list.png',
                  ),
                  iconName: 'Teachers List',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChildTeacherList(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/class_list.png',
                  ),
                  iconName: 'Class List',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChildClassList(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.teal,
                  icon: AssetImage(
                    'icons/behavior.png',
                  ),
                  iconName: 'Behavior',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
