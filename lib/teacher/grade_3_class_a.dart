import 'package:flutter/material.dart';
import 'package:schooler/child/child_class_list.dart';
import 'package:schooler/custom_widgets/custom_big_icon.dart';

class Grade3ClassA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grade 3 - Class A'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2.0, 15.0, 2.0, 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomBigIcon(
                    colora: Colors.red.shade400,
                    icon: AssetImage(
                      'icons/attendance.png',
                    ),
                    iconName: 'Attendance',
                  ),
                ),
                Expanded(
                  child: CustomBigIcon(
                    colora: Colors.blue.shade800,
                    icon: AssetImage(
                      'icons/course_work.png',
                    ),
                    iconName: 'Coursework',
                  ),
                ),
                Expanded(
                  child: CustomBigIcon(
                    colora: Colors.teal,
                    icon: AssetImage(
                      'icons/grading.png',
                    ),
                    iconName: 'Grading',
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
                    colora: Colors.blue.shade800,
                    icon: AssetImage(
                      'icons/top_three.png',
                    ),
                    iconName: 'Top 3',
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
            ),
          ],
        ),
      ),
    );
  }
}
