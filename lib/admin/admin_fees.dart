import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_fees_big_icon.dart';
import 'create_fees_bottom_sheet.dart';

class AdminFees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future feesBottomSheet(
        String grade, String firstInstallment, String secondInstallment) {
      return showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => CreateFeesBottomSheet(
                grade: grade,
                firstInstallment: firstInstallment,
                secondInstallment: secondInstallment,
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Fees'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomFeesBigIcon(
                      color: Colors.teal,
                      text: 'Grade 1',
                      onTap: () {
                        feesBottomSheet('1', '200 EGP', '300 EGP');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomFeesBigIcon(
                      color: Colors.teal,
                      text: 'Grade 2',
                      onTap: () {
                        feesBottomSheet('2', '300 EGP', '400 EGP');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomFeesBigIcon(
                      color: Colors.teal,
                      text: 'Grade 3',
                      onTap: () {
                        feesBottomSheet('3', '400 EGP', '500 EGP');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomFeesBigIcon(
                      color: Colors.teal,
                      text: 'Grade 4',
                      onTap: () {
                        feesBottomSheet('4', '500 EGP', '600 EGP');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomFeesBigIcon(
                      color: Colors.teal,
                      text: 'Grade 5',
                      onTap: () {
                        feesBottomSheet('5', '600 EGP', '700 EGP');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomFeesBigIcon(
                      color: Colors.teal,
                      text: 'Grade 6',
                      onTap: () {
                        feesBottomSheet('6', '700 EGP', '800 EGP');
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
