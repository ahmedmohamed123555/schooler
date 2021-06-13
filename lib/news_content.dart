import 'package:flutter/material.dart';
import 'custom_widgets/custom_news_card.dart';

class NewsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CutomNewsCard(
          image: AssetImage('images/corona.jpg'),
          title: 'Safety',
          description:
              'Parents, please keep your children safe and do not take them out of homes without wearing a mask for their safety',
        ),
        CutomNewsCard(
          image: AssetImage('images/activities.jpg'),
          title: 'Activities',
          description:
              'The school administration announces the start of sports practices activities where children will be allowed to register and practice their favorite sports',
        ),
        CutomNewsCard(
          image: AssetImage('images/exams.jpg'),
          title: 'Final Exams',
          description:
              'The school administration announces the final Exam schedule, please check your Notifications for more Detailes',
        ),
      ],
    );
  }
}
