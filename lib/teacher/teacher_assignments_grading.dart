import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_attendane_card.dart';

import 'create_assignment_grading_bottom_sheet.dart';

class TeacherAssignmentsGrading extends StatefulWidget {
  @override
  _TeacherAssignmentsGradingState createState() =>
      _TeacherAssignmentsGradingState();
}

class _TeacherAssignmentsGradingState extends State<TeacherAssignmentsGrading> {
  String chosenAssignment;
  List assignments = ['Assignment 1', 'Assignment 2', 'Assignment 3'];
  Future assignmentGradingBottomSheet(
      String chosenAssignment, String studentName) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => CreateAssignmentGradingBottomSheet(
              chosenAssignment: chosenAssignment,
              studentName: studentName,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      body: Column(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: assignments.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                    hint: Text(
                      'SELECT ASSIGNMENT',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    value: chosenAssignment,
                    onChanged: (newValue) {
                      setState(() {
                        chosenAssignment = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                CustomAttendanceCard(
                  name: 'Ahmed Moustafa',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Ahmed Moustafa');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Sarah Khaled',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Sarah Khaled');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Waleed Gamal',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Waleed Gamal');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Hadeer Mohamed',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Hadeer Mohamed');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Nada Abdel-Aziz',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Nada Abdel-Aziz');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Reda Samir',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Reda Samir');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Osama Othman',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Osama Othman');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Yassein Ali',
                  onTap: () {
                    if (chosenAssignment == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenAssignment, 'Yassein Ali');
                    }
                  },
                ),
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
              ],
            ),
          ),
        )
      ]),
    );
  }
}
