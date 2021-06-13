import 'package:flutter/material.dart';

class CustomBigIcon extends StatelessWidget {
  CustomBigIcon({this.icon, this.colora, this.iconName});
  final ImageProvider icon;
  final Color colora;
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Material(
              elevation: 18.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                //color: colora,
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: colora,
                  borderRadius: BorderRadius.circular(20.0),
                  // image: DecorationImage(
                  //   image: icon,
                  //   fit: BoxFit.scaleDown,
                  // ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: icon,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              iconName,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
