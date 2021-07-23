import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_assignment_card.dart';
import 'package:schooler/teacher/create_assignment_bottom_sheet.dart';

import 'create_assignment_info_bottom_sheet.dart';

class TeacherAssignmentsCoursework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future assignmentBottomSheet(String assignmentTitle,
        String assignmentDueDate, String assignmentGrade) {
      return showModalBottomSheet(
          //isScrollControlled: true,
          context: context,
          builder: (context) => CreateAssignmentInfoBottomSheet(
                assignmentTitle: assignmentTitle,
                assignmentDueDate: assignmentDueDate,
                assignmentGrade: assignmentGrade,
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CreateAssignmentBottomSheet()));
        },
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAssignmentCard(
              assignmentTitle: 'Assignment 1',
              onTap: () {
                assignmentBottomSheet('Assignment 1', '25/7/2021', '3 Grades');
              },
            ),
            CustomAssignmentCard(
              assignmentTitle: 'Assignment 2',
              onTap: () {
                assignmentBottomSheet('Assignment 2', '1/8/2021', '3 Grades');
              },
            ),
            CustomAssignmentCard(
              assignmentTitle: 'Assignment 3',
              onTap: () {
                assignmentBottomSheet('Assignment 3', '10/8/2021', '3 Grades');
              },
            ),
          ],
        ),
      ),
    );
  }
}
