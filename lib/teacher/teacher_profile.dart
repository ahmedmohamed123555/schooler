import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_big_icon.dart';

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
              ),
            ),
            Expanded(
              child: CustomBigIcon(
                colora: Colors.blue.shade800,
                icon: AssetImage(
                  'icons/activities.png',
                ),
                iconName: 'Activities',
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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Expanded(
//   child: CustomBigIcon(
//     colora: Colors.red.shade400,
//     icon: AssetImage(
//       'icons/course_work.png',
//     ),
//     iconName: 'CourseWork',
//   ),
// ),
