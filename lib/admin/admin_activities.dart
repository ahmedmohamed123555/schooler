import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_biger_icon.dart';
import 'create_activity_bottom_sheet.dart';

class AdminActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              context: context,
              builder: (context) => CreateActivityBottomSheet());
        },
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
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
                      onTap: () {},
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
