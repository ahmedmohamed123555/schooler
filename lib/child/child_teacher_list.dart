import 'package:flutter/material.dart';

class ChildTeacherList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        //padding: EdgeInsets.all(20.0),
        height: 130.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 55.0,
                backgroundImage: AssetImage('images/teacher1.jpeg'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'T. Samy Radwan',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text('Math Teacher'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
