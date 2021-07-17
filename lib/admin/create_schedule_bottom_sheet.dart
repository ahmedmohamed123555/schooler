import 'package:flutter/material.dart';
import 'admin_schedule.dart';

class CreateScheduleBottomSheet extends StatelessWidget {
  CreateScheduleBottomSheet({this.onTapGrade, this.onTapClass});
  String onTapGrade;
  String onTapClass;
  final AdminSchedule adminSchedule = AdminSchedule();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        height: 220.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 90.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  'Grade $onTapGrade - Class $onTapClass',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.teal,
                child: Text(
                  'Show Scedule',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.teal,
                child: Text(
                  'Upload Scedule',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.teal,
                child: Text(
                  'Delete Scedule',
                  style: TextStyle(
                    color: Colors.white,
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
