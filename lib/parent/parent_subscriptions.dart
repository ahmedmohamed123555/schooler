import 'package:flutter/material.dart';
import 'package:schooler/parent/parent_trips.dart';
import 'package:schooler/parent/parent_bus.dart';
import 'package:schooler/parent/Parent_activities.dart';

class ParentSubscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscriptions'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentBus(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BUS',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 60.0,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image(
                              image: AssetImage('icons/bus.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentTrips(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TRIPS',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 60.0,
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Image(
                              image: AssetImage('icons/trips.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentActivities(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ACTIVITIES',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 60.0,
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Image(
                              image: AssetImage('icons/activities.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
