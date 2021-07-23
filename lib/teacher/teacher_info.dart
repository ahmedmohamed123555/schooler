import 'package:flutter/material.dart';

class TeacherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('images/teacher1.jpeg'),
          ),
          Text(
            'Samy Radwan',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            //padding: EdgeInsets.all(20.0),
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(
                      Icons.work,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Text(
                  'Math Teacher',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey.shade600,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            //padding: EdgeInsets.all(20.0),
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Text(
                  '01150697832',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey.shade600,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            //padding: EdgeInsets.all(20.0),
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Text(
                  '15 Eltahrir Street, Eldokki, Giza',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey.shade600,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
