import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_assignment_card.dart';
import 'package:schooler/teacher/create_quiz_bottom_sheet.dart';

import 'create_quiz_info_bottom_sheet.dart';

class TeacherQuizesCoursework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future quizBottomSheet(String quizTitle, String quizSubject,
        String quizDate, String quizGrade) {
      return showModalBottomSheet(
          //isScrollControlled: true,
          context: context,
          builder: (context) => CreateQuizInfoBottomSheet(
                quizTitle: quizTitle,
                quizSubject: quizSubject,
                quizDate: quizDate,
                quizGrade: quizGrade,
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Quizes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateQuizBottomSheet()));
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
              assignmentTitle: 'Quiz 1',
              onTap: () {
                quizBottomSheet('Quiz 1', 'Unit 1', '30/7/2021', '5 Grades');
              },
            ),
            CustomAssignmentCard(
              assignmentTitle: 'Quiz 2',
              onTap: () {
                quizBottomSheet('Quiz 2', 'Unit 2', '4/8/2021', '5 Grades');
              },
            ),
            CustomAssignmentCard(
              assignmentTitle: 'Quiz 3',
              onTap: () {
                quizBottomSheet('Quiz 3', 'Unit 3', '10/8/2021', '5 Grades');
              },
            ),
          ],
        ),
      ),
    );
  }
}
