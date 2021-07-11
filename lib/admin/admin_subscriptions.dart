import 'package:flutter/material.dart';
import 'package:schooler/admin/admin_trips.dart';
import 'package:schooler/admin/admin_bus.dart';
import 'package:schooler/admin/admin_activities.dart';

class AdminSubscriptions extends StatelessWidget {
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
                      builder: (context) => AdminBus(),
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
                      builder: (context) => AdminTrips(),
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
                      builder: (context) => AdminActivities(),
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
