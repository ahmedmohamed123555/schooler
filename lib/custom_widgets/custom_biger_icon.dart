import 'package:flutter/material.dart';

class CustomBigerIcon extends StatelessWidget {
  CustomBigerIcon({this.icon, this.colora, this.iconName, this.onTap});
  final ImageProvider icon;
  final Color colora;
  final String iconName;
  final Function onTap;
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
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 180.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: colora,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: icon,
                    ),
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
