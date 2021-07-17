import 'package:flutter/material.dart';

class CustomFeesBigIcon extends StatelessWidget {
  CustomFeesBigIcon({this.color, this.text, this.onTap});
  final Color color;
  final String text;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
