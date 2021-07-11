import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ChildAttendans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            //padding: EdgeInsets.all(20.0),
            height: 150.0,
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Adam Gamal',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Text('Grade 4 - Class A'),
                    ],
                  ),
                  CircleAvatar(
                    radius: 55.0,
                    backgroundImage: AssetImage('images/child1.jpg'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              //padding: EdgeInsets.all(20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    animation: true,
                    radius: 200.0,
                    lineWidth: 10.0,
                    percent: 0.8,
                    progressColor: Colors.teal,
                    center: Text(
                      '80%',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    animationDuration: 1500,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Overall Stat of Adam at School',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
