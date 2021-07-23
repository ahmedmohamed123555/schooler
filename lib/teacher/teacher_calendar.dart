import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TeacherCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Container(
        child: SfCalendar(
          view: CalendarView.month,
          firstDayOfWeek: 6,
        ),
      ),
    );
  }
}
