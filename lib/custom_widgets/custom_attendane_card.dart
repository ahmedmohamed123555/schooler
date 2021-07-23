import 'package:flutter/material.dart';

class CustomAttendanceCard extends StatelessWidget {
  CustomAttendanceCard({this.name, this.onTap});
  String name;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: ListTile(
            leading: CircleAvatar(),
            title: Text(name),
            trailing: Checkbox(value: false, onChanged: null),
          ),
        ),
      ),
    );
  }
}
