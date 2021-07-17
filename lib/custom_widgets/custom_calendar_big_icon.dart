import 'package:flutter/material.dart';

class CustomCalendarBigIcon extends StatelessWidget {
  CustomCalendarBigIcon({
    this.color,
    this.text,
    this.onTapA,
    this.onTapB,
    this.onTapC,
    this.onTapD,
    this.onTapE,
    this.onTapF,
  });
  final Color color;
  final String text;
  final Function onTapA;
  final Function onTapB;
  final Function onTapC;
  final Function onTapD;
  final Function onTapE;
  final Function onTapF;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        elevation: 10.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: color,
          ),
          width: 180.0,
          height: 180.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onTapA,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'A',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTapB,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'B',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTapC,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'C',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onTapD,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'D',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTapE,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'E',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTapF,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'F',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
