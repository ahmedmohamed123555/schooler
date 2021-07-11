import 'package:flutter/material.dart';
import 'package:schooler/parent/trip_data.dart';
import 'create_trip_bottom_sheet.dart';

TripData tripData = TripData();

class AdminTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet<dynamic>(
            isScrollControlled: true,
            context: context,
            builder: (context) => CreateTripBottomSheet(),
          );
        },
      ),
      appBar: AppBar(
        title: Text('Trips'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 55.0,
                    backgroundImage:
                        AssetImage('images/theegyptionmuseum.jpeg'),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tripData.getTitle(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.date_range),
                                    Icon(Icons.location_on),
                                    Icon(Icons.group),
                                  ]),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(tripData.getDate()),
                                  Text(tripData.getAdress()),
                                  Text(tripData.getMaxNumber()),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
