import 'package:flutter/material.dart';

class TeacherActivityFootball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 230.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/football.jpg'),
                  ),
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              SizedBox(),
              Text(
                'Football is one of the most important and most popular sports ever. It is a team sport played between two teams of eleven players each. Let your kid enjoy playing soccer and making friends in the best sports ever.',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Due Date:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '  11 Nov 2020',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Students Max Number:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '  30',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Training Dates:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Saturday: From 11:15 AM to 12:00 PM',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    'Wednesday: From 09:00 AM to 09:45 PM',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ]),
      ),
    );
  }
}
