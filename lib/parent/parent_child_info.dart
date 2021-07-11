import 'package:flutter/material.dart';

class ParentChildInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adam Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('images/child1.jpg'),
          ),
          Text(
            'Adam Magdy',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
          Text(
            'Grade 4 - Class A',
            style: TextStyle(
              fontSize: 15.0,
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
                      Icons.cake,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Text(
                  '14 Aug 2010',
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
                  '01236547896',
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
                      Icons.pregnant_woman,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Text(
                  'Mr. Gamal Magdy',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
