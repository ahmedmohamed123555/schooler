import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_attendane_card.dart';

import 'create_quiz_grading_bottom_sheet.dart';

class TeacherQuizesGrading extends StatefulWidget {
  @override
  _TeacherQuizesGradingState createState() => _TeacherQuizesGradingState();
}

class _TeacherQuizesGradingState extends State<TeacherQuizesGrading> {
  String chosenQuiz;
  List quizes = ['Quiz 1', 'Quiz 2', 'Quiz 3'];
  Future assignmentGradingBottomSheet(String chosenQuiz, String studentName) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => CreateQuizGradingBottomSheet(
              chosenQuiz: chosenQuiz,
              studentName: studentName,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizes'),
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
                    items: quizes.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                    hint: Text(
                      'SELECT QUIZ',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    value: chosenQuiz,
                    onChanged: (newValue) {
                      setState(() {
                        chosenQuiz = newValue;
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
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenQuiz, 'Ahmed Moustafa');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Sarah Khaled',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(chosenQuiz, 'Sarah Khaled');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Waleed Gamal',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(chosenQuiz, 'Waleed Gamal');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Hadeer Mohamed',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenQuiz, 'Hadeer Mohamed');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Nada Abdel-Aziz',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(
                          chosenQuiz, 'Nada Abdel-Aziz');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Reda Samir',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(chosenQuiz, 'Reda Samir');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Osama Othman',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(chosenQuiz, 'Osama Othman');
                    }
                  },
                ),
                CustomAttendanceCard(
                  name: 'Yassein Ali',
                  onTap: () {
                    if (chosenQuiz == null) {
                    } else {
                      assignmentGradingBottomSheet(chosenQuiz, 'Yassein Ali');
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
