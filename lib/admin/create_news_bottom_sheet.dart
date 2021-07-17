import 'package:flutter/material.dart';

class CreateNewsBottomSheet extends StatelessWidget {
  String newsTitle;
  String newsDescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Create News',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                onChanged: (value) {
                  newsTitle = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: 'Enter News Title',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextField(
                maxLines: 3,
                onChanged: (value) {
                  newsDescription = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: 'Enter News Description',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.teal,
                child: Text('CREATE'),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
