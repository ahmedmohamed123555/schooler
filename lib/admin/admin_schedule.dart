import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_calendar_big_icon.dart';
import 'create_schedule_bottom_sheet.dart';

class AdminSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future scheduleBottomSheet(String onTapGrade, String onTapClass) {
      return showModalBottomSheet(
          context: context,
          builder: (context) => CreateScheduleBottomSheet(
                onTapGrade: onTapGrade,
                onTapClass: onTapClass,
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCalendarBigIcon(
                      color: Colors.teal,
                      text: 'Grade 1',
                      onTapA: () {
                        scheduleBottomSheet('1', 'A');
                      },
                      onTapB: () {
                        scheduleBottomSheet('1', 'B');
                      },
                      onTapC: () {
                        scheduleBottomSheet('1', 'C');
                      },
                      onTapD: () {
                        scheduleBottomSheet('1', 'D');
                      },
                      onTapE: () {
                        scheduleBottomSheet('1', 'E');
                      },
                      onTapF: () {
                        scheduleBottomSheet('1', 'F');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomCalendarBigIcon(
                      color: Colors.teal,
                      text: 'Grade 2',
                      onTapA: () {
                        scheduleBottomSheet('2', 'A');
                      },
                      onTapB: () {
                        scheduleBottomSheet('2', 'B');
                      },
                      onTapC: () {
                        scheduleBottomSheet('2', 'C');
                      },
                      onTapD: () {
                        scheduleBottomSheet('2', 'D');
                      },
                      onTapE: () {
                        scheduleBottomSheet('2', 'E');
                      },
                      onTapF: () {
                        scheduleBottomSheet('2', 'F');
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCalendarBigIcon(
                      color: Colors.teal,
                      text: 'Grade 3',
                      onTapA: () {
                        scheduleBottomSheet('3', 'A');
                      },
                      onTapB: () {
                        scheduleBottomSheet('3', 'B');
                      },
                      onTapC: () {
                        scheduleBottomSheet('3', 'C');
                      },
                      onTapD: () {
                        scheduleBottomSheet('3', 'D');
                      },
                      onTapE: () {
                        scheduleBottomSheet('3', 'E');
                      },
                      onTapF: () {
                        scheduleBottomSheet('3', 'F');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomCalendarBigIcon(
                      color: Colors.teal,
                      text: 'Grade 4',
                      onTapA: () {
                        scheduleBottomSheet('4', 'A');
                      },
                      onTapB: () {
                        scheduleBottomSheet('4', 'B');
                      },
                      onTapC: () {
                        scheduleBottomSheet('4', 'C');
                      },
                      onTapD: () {
                        scheduleBottomSheet('4', 'D');
                      },
                      onTapE: () {
                        scheduleBottomSheet('4', 'E');
                      },
                      onTapF: () {
                        scheduleBottomSheet('4', 'F');
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCalendarBigIcon(
                      color: Colors.teal,
                      text: 'Grade 5',
                      onTapA: () {
                        scheduleBottomSheet('5', 'A');
                      },
                      onTapB: () {
                        scheduleBottomSheet('5', 'B');
                      },
                      onTapC: () {
                        scheduleBottomSheet('5', 'C');
                      },
                      onTapD: () {
                        scheduleBottomSheet('5', 'D');
                      },
                      onTapE: () {
                        scheduleBottomSheet('5', 'E');
                      },
                      onTapF: () {
                        scheduleBottomSheet('5', 'F');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomCalendarBigIcon(
                      color: Colors.teal,
                      text: 'Grade 6',
                      onTapA: () {
                        scheduleBottomSheet('6', 'A');
                      },
                      onTapB: () {
                        scheduleBottomSheet('6', 'B');
                      },
                      onTapC: () {
                        scheduleBottomSheet('6', 'C');
                      },
                      onTapD: () {
                        scheduleBottomSheet('6', 'D');
                      },
                      onTapE: () {
                        scheduleBottomSheet('6', 'E');
                      },
                      onTapF: () {
                        scheduleBottomSheet('6', 'F');
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
