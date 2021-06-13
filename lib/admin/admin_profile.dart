import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_big_icon.dart';

class AdminProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Profile'),
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
                    'icons/accounts.png',
                  ),
                  iconName: 'Accounts',
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/calendar.png',
                  ),
                  iconName: 'Calendar',
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.teal,
                  icon: AssetImage(
                    'icons/schedule.png',
                  ),
                  iconName: 'Schedule',
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
                    'icons/fees.png',
                  ),
                  iconName: 'Fees',
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
                    'icons/notification.png',
                  ),
                  iconName: 'Notifications',
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
                    'icons/school_levels.png',
                  ),
                  iconName: 'School Levels',
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.blue.shade800,
                  icon: AssetImage(
                    'icons/gps_location.png',
                  ),
                  iconName: 'GPS Location',
                ),
              ),
              Expanded(
                child: CustomBigIcon(
                  colora: Colors.teal,
                  icon: AssetImage(
                    'icons/survey.png',
                  ),
                  iconName: 'Survey',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
