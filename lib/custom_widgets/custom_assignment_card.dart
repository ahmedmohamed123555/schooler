import 'package:flutter/material.dart';

class CustomAssignmentCard extends StatelessWidget {
  CustomAssignmentCard({this.assignmentTitle, this.onTap});
  final String assignmentTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20.0)),
          child: ListTile(
            leading: Icon(Icons.assignment),
            title: Text(assignmentTitle),
          ),
        ),
      ),
    );
  }
}
