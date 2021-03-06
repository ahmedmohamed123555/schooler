import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_biger_icon.dart';

class ChildCourseWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coursework'),
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
                      iconName: 'Mathematics',
                      icon: AssetImage(
                        'icons/mathematics.png',
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.blue.shade400,
                      iconName: 'Physics',
                      icon: AssetImage(
                        'icons/physics.png',
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
                      iconName: 'Biology',
                      icon: AssetImage(
                        'icons/biology.png',
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.brown,
                      iconName: 'Chemistry',
                      icon: AssetImage(
                        'icons/chemistry.png',
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
                      iconName: 'History',
                      icon: AssetImage(
                        'icons/history.png',
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: CustomBigerIcon(
                      colora: Colors.red.shade400,
                      iconName: 'English',
                      icon: AssetImage(
                        'icons/english.png',
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
