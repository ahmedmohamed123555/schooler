import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'create_calendar_event_bottom_sheet.dart';

class AdminCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CreateCaledarEventBottomSheet()));
        },
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
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
