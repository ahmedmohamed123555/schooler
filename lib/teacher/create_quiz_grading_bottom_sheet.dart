import 'package:flutter/material.dart';

class CreateQuizGradingBottomSheet extends StatelessWidget {
  CreateQuizGradingBottomSheet({this.chosenQuiz, this.studentName});
  String chosenQuiz;
  String studentName;
  String grade;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                chosenQuiz,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Student: $studentName',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                onChanged: (value) {
                  grade = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: 'Enter Assignment Grade',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                color: Colors.teal,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
