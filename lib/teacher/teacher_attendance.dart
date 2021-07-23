import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_attendane_card.dart';

class TeacherAttendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                height: 60.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(width: 2, color: Colors.grey.shade400),
                ),
                child: Center(
                  child: Text(
                    '28 Jul 2021',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey.shade200,
              child: Column(children: [
                CustomAttendanceCard(name: 'Ahmed Moustafa'),
                CustomAttendanceCard(name: 'Sarah Khaled'),
                CustomAttendanceCard(name: 'Waleed Gamal'),
                CustomAttendanceCard(name: 'Hadeer Mohamed'),
                CustomAttendanceCard(name: 'Nada Abdel-Aziz'),
                CustomAttendanceCard(name: 'Reda Samir'),
                CustomAttendanceCard(name: 'Osama Othman'),
                CustomAttendanceCard(name: 'Yassein Ali'),
                Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.teal,
                    onPressed: () {},
                    child: Text(
                      'Post',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
