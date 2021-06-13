import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_big_icon.dart';

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
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/subscribe.png',
                  ),
                  iconName: 'Subscriptions',
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
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/class_list.png',
                  ),
                  iconName: 'Class List',
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
