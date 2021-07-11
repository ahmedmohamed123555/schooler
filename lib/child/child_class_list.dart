import 'package:flutter/material.dart';

class ChildClassList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class List'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        //padding: EdgeInsets.all(20.0),
        height: 100.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 55.0,
                backgroundImage: AssetImage('images/child2.jpg'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Ahmed Moustafa',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
